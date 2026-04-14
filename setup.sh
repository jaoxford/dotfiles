#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -f /etc/arch-release ]; then
    if grep -q "cachyos" "/etc/os-release"; then
        "$SCRIPT_DIR/cachyos/cachyos.sh"
    elif grep -q "^ID=arch$" "/etc/os-release"; then
        "$SCRIPT_DIR/omarchy/omarchy.sh"
    fi
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    "$SCRIPT_DIR/macos/macos.sh"
fi

"$SCRIPT_DIR/git/git.sh"
