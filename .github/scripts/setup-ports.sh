#!/usr/bin/env bash
# Fetch the official ports tree and register this repo in PORTSDIR_PATH.
# Usage: setup-ports.sh <openbsd-version>   (runs inside the OpenBSD VM)
set -eux

version="${1:-${OPENBSD_VERSION:-}}"
: "${version:?usage: setup-ports.sh <openbsd-version>}"

ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
cd "$ROOT"

curl -fsSL -o /tmp/ports.tar.gz \
	"https://cdn.openbsd.org/pub/OpenBSD/${version}/ports.tar.gz"
sudo tar -C /usr -xzf /tmp/ports.tar.gz
echo "PORTSDIR_PATH=/usr/ports:${ROOT}" | sudo tee -a /etc/mk.conf
# The VM image may ship dependency packages newer than the release ports
# tree (stable package updates), which makes the WANTLIB version cross-check
# in "make package" fail on version drift. Downgrade it to a warning.
echo "PKG_CREATE_NO_CHECKS=warn" | sudo tee -a /etc/mk.conf
sudo pkg_add -I curl
mkdir -p ci-logs ci-packages
