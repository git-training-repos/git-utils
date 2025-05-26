#!/usr/bin/env bash
# This script will setup all the git config in this repo

SETUP_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

"$SETUP_DIR/basic.sh"
"$SETUP_DIR/advanced.sh"
