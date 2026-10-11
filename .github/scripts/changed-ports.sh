#!/usr/bin/env bash
# Write changed-ports.txt with the affected <category>/<port> entries,
# or "ALL" on workflow_dispatch. Runs on the GitHub-hosted runner.
set -euo pipefail

event_name="${EVENT_NAME:-}"
base_ref="${BASE_REF:-}"
before_sha="${BEFORE_SHA:-}"

if [ "$event_name" = "workflow_dispatch" ]; then
	echo ALL > changed-ports.txt
	exit 0
fi

base=""
case "$event_name" in
	pull_request)
		if git fetch --no-tags origin "$base_ref" 2>/dev/null; then
			base="FETCH_HEAD"
		fi
		;;
	push)
		base="$before_sha"
		;;
esac

if [ -n "$base" ] && git cat-file -e "${base}^{commit}" 2>/dev/null; then
	files="$(git diff --name-only --diff-filter=ACMR "${base}...HEAD" || true)"
else
	files="$(git diff --name-only --diff-filter=ACMR "HEAD~1...HEAD" 2>/dev/null || true)"
fi

: > changed-ports.txt
if [ -n "$files" ]; then
	while IFS= read -r p; do
		if [ -f "$p/Makefile" ]; then
			echo "$p" >> changed-ports.txt
		fi
	done < <(printf '%s\n' "$files" | awk -F/ 'NF>=2 {print $1"/"$2}' | sort -u)
fi

echo "Changed ports:"
cat changed-ports.txt
