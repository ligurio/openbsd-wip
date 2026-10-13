#!/usr/bin/env bash
# Build ports and collect their packages into ci-packages/.
# Usage: build-ports.sh [<category>/<port>]
#   with an argument: build only that port (one port per CI job)
#   without: read changed-ports.txt ("ALL" = every port); each line may
#            carry extra packages as "<category>/<port>\t<packages>"
# Runs inside the OpenBSD VM; logs go to ci-logs/.
#
# Redirections are intentionally performed by the invoking user (not by
# sudo), so the resulting log files stay owned by that user.
# SC2086 is intentional: the package list must be split into arguments.
# shellcheck disable=SC2024,SC2086
set -u

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT" || exit 1

mkdir -p ci-logs ci-packages

status=0

if [ -n "${1:-}" ]; then
	ports="$1"
elif [ ! -f changed-ports.txt ] || grep -qx ALL changed-ports.txt; then
	ports="$(for cat in */; do
		for port in "${cat}"*/; do
			[ -f "${port}Makefile" ] && echo "$port"
		done
	done)"
else
	ports="$(cat changed-ports.txt)"
fi

if [ -z "$ports" ]; then
	echo "No ports to build."
	exit 0
fi

while IFS=$'\t' read -r port pkgs; do
	[ -n "$port" ] || continue
	name="$(echo "$port" | tr '/' '_')"
	log="ci-logs/${name}.log"
	echo "::group::${port}"

	# Install the packages this port needs before building it. The list is
	# carried in the second column of changed-ports.txt (see PORT_PACKAGES
	# in openbsd.yml), so unrelated ports do not pull in anything extra.
	if [ -n "${pkgs:-}" ]; then
		echo ">>> pkg_add -I ${pkgs}" >"$log"
		if ! sudo pkg_add -I ${pkgs} >>"$log" 2>&1; then
			echo "FAIL: pkg_add for ${port}"
			tail -n 40 "$log"
			status=1
			echo "::endgroup::"
			continue
		fi
	fi

	if sudo make -C "$port" fetch    >>"$log" 2>&1 \
		&& sudo make -C "$port" checksum >>"$log" 2>&1 \
		&& sudo make -C "$port" package  >>"$log" 2>&1; then
		echo "PASS: ${port}"
		tail -n 20 "$log"

		# collect the built packages as packages/<arch>/<file>.tgz
		os_arch="$(uname -m)"
		pkgdir="ci-packages/packages/${os_arch}"
		mkdir -p "$pkgdir"
		while read -r pkg; do
			if [ -n "$pkg" ] && [ -f "$pkg" ]; then
				sudo install -m 644 -o "$(id -u)" -g "$(id -g)" \
					"$pkg" "$pkgdir/"
				echo "Collected packages/${os_arch}/$(basename "$pkg")"
			fi
		done < <(make -C "$port" show-list=PKGFILES 2>/dev/null || true)

		# WANTLIB vs actually needed libs; needs the fake dir, so only
		# after a successful build. This make target ignores its exit
		# status, so look for its "Extra"/"Missing" reports instead.
		ldc="ci-logs/${name}.port-lib-depends-check.log"
		sudo make -C "$port" port-lib-depends-check >"$ldc" 2>&1 || true
		if grep -Eq '^(Extra|Missing)' "$ldc"; then
			echo "FAIL: port-lib-depends-check for ${port}"
			tail -n 40 "$ldc"
			status=1
		fi
	else
		echo "FAIL: ${port}"
		echo "----- first errors -----"
		grep -n -B20 -A4 -iE 'error:' "$log" | head -n 200
		echo "----- missing includes -----"
		grep -n -iE 'file not found|no such file' "$log" | head -n 20
		echo "----- tail -----"
		tail -n 40 "$log"
		status=1
	fi

	# Static port QA; runs regardless of the build result.
	pc="ci-logs/${name}.portcheck.log"
	if (cd "$port" && /usr/ports/infrastructure/bin/portcheck) >"$pc" 2>&1; then
		echo "portcheck: ${port} OK"
	else
		echo "FAIL: portcheck for ${port}"
		cat "$pc"
		status=1
	fi
	echo "::endgroup::"
done <<< "$ports"

exit $status
