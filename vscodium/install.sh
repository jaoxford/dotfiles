#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Setting up VSCodium..."

"$SCRIPT_DIR/install_settings_json.sh"
"$SCRIPT_DIR/install_codium_extensions.sh"
