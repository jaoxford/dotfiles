#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

"$SCRIPT_DIR/aliases.sh"
"$SCRIPT_DIR/config.sh"
