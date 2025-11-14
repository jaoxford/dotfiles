#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Running macOS setup..."

echo "Installing Homebrew and packages..."
"$SCRIPT_DIR/brew.sh"

echo "Configuring macOS defaults..."
"$SCRIPT_DIR/defaults.sh"
