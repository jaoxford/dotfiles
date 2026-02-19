#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_DIR="${XDG_CONFIG_HOME}"

echo "Linking config files..."
ln -sf "$SCRIPT_DIR/.config/hypr/bindings.conf" "$CONFIG_DIR/hypr/bindings.conf"
