#!/usr/bin/env bash
# Fetch the official ports tree and register this repo in PORTSDIR_PATH.
# Usage: setup-ports.sh <openbsd-version>   (runs inside the OpenBSD VM)
set -eux

version="${1:-${OPENBSD_VERSION:-}}"
: "${version:?usage: setup-ports.sh <openbsd-version>}"

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

# The workflow restores ci-src/ from an immutable cache and syncs it into the
# VM; only download on a cold cache.
tarball="${ROOT}/ci-src/ports-${version}.tar.gz"
if [ -f "$tarball" ]; then
	echo "Using cached ports tarball: $tarball"
else
	mkdir -p "$(dirname "$tarball")"
	curl -fsSL -o "$tarball" \
		"https://cdn.openbsd.org/pub/OpenBSD/${version}/ports.tar.gz"
fi
sudo tar -C /usr -xzf "$tarball"
# Ports in this tree that create users must register them here, exactly as
# they would be in the official user.list once merged upstream.
echo '720 _sagan		_sagan		security/sagan' | \
	sudo tee -a /usr/ports/infrastructure/db/user.list
echo '724 _tarantool	_tarantool	databases/tarantool' | \
	sudo tee -a /usr/ports/infrastructure/db/user.list
echo "PORTSDIR_PATH=/usr/ports:${ROOT}" | sudo tee -a /etc/mk.conf
# The VM image may ship dependency packages newer than the release ports
# tree (stable package updates), which makes the WANTLIB version cross-check
# in "make package" fail on version drift. Downgrade it to a warning.
echo "PKG_CREATE_NO_CHECKS=warn" | sudo tee -a /etc/mk.conf
# Reuse compiled objects between CI runs: the cache directory lives in the
# workspace so it is synced out of the VM and cached by the workflow.
echo "USE_CCACHE=Yes" | sudo tee -a /etc/mk.conf
echo "CCACHE_DIR=${ROOT}/ci-cache/ccache" | sudo tee -a /etc/mk.conf
echo "CCACHE_ENV=CCACHE_COMPRESS=true CCACHE_MAXSIZE=2G" | sudo tee -a /etc/mk.conf
sudo pkg_add -I curl ccache
mkdir -p ci-logs ci-packages ci-cache/ccache
