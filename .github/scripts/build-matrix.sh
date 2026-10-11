#!/usr/bin/env bash
# Turn changed-ports.txt into:
#   matrix - one leg per (version x architecture), or a single no-op leg
#            when nothing changed, so the job name always renders;
#   ports  - JSON array of the changed <category>/<port> paths.
# Runs on the GitHub-hosted runner (needs jq).
set -euo pipefail

: "${GITHUB_OUTPUT:?GITHUB_OUTPUT must be set}"

versions="${VERSIONS:-}"
architectures="${ARCHITECTURES:-}"

if grep -qx ALL changed-ports.txt 2>/dev/null; then
	ports="$(for cat in */; do
		for port in "${cat}"*/; do
			[ -f "${port}Makefile" ] && echo "${port%/}"
		done
	done)"
else
	ports="$(grep -v '^[[:space:]]*$' changed-ports.txt 2>/dev/null || true)"
fi

ports_json="$(printf '%s\n' "$ports" | jq -R -s -c 'split("\n") | map(select(length > 0))')"

matrix="$(printf '%s' "$ports_json" | jq -c \
	--arg versions "$versions" \
	--arg architectures "$architectures" '
		. as $ports
		| ($versions | split(" ") | map(select(length > 0))) as $vers
		| ($architectures | split(" ") | map(select(length > 0))) as $archs
		| [ $vers[] as $v
		    | $archs[] as $a
		    | { version: $v,
		        architecture: $a,
		        label: ("OpenBSD " + $v + " (" + $a + ")") } ] as $legs
		| if ($ports | length) > 0 and ($legs | length) > 0 then $legs
		  else [{ version: "", architecture: "", label: "no port changes" }]
		  end')"

echo "ports=$ports_json" >> "$GITHUB_OUTPUT"
echo "matrix=$matrix" >> "$GITHUB_OUTPUT"
echo "ports: $ports_json"
echo "matrix: $matrix"
