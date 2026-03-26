#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

if [ -f /etc/arch-release ]; then
    "$SCRIPT_DIR/arch/arch.sh"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Copying over aliases to $HOME/.aliases"
    cp "$SCRIPT_DIR/.aliases" "$HOME/.aliases"

    echo "Appending zshrc to $HOME/.zshrc"
    cat "$SCRIPT_DIR/.zshrc" >> "$HOME/.zshrc"

    echo "Copying gitignore from $SCRIPT_DIR/git/global_gitignore to $HOME/.gitignore"
    cp "$SCRIPT_DIR/git/global_gitignore" "$HOME/.gitignore"

    "$SCRIPT_DIR/macos/macos.sh"
fi

echo "Setting up git"
"$SCRIPT_DIR/git/aliases.sh"
"$SCRIPT_DIR/git/config.sh"

echo "Finished"
