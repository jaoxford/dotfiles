#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo "Copying over aliases to $HOME/.aliases"
cp "$SCRIPT_DIR/.aliases" "$HOME/.aliases"
echo "Appending zshrc to $HOME/.zshrc"
cat "$SCRIPT_DIR/.zshrc" >> "$HOME/.zshrc"

echo "Copying gitignore from $SCRIPT_DIR/git/global_gitignore to $HOME/.gitignore"
cp "$SCRIPT_DIR/git/global_gitignore" "$HOME/.gitignore"

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Running macOS specific setup"
    "$SCRIPT_DIR/macos/macos.sh"
    "$SCRIPT_DIR/macos/brew.sh"
fi

echo "Setting up git"
"$SCRIPT_DIR/git/aliases.sh"
"$SCRIPT_DIR/git/config.sh"

# echo "Copying tmux config to $HOME/.config/tmux/tmux.conf."
# mkdir -p "$HOME/.config/tmux" && cp "$SCRIPT_DIR/tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"

echo "Finished"
