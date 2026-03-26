#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )

echo "Running macOS setup..."

echo "Copying over aliases to $HOME/.aliases"
cp "$DOTFILES_DIR/.aliases" "$HOME/.aliases"

echo "Appending zshrc to $HOME/.zshrc"
cat "$DOTFILES_DIR/.zshrc" >> "$HOME/.zshrc"

echo "Copying gitignore from $DOTFILES_DIR/git/global_gitignore to $HOME/.gitignore"
cp "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"

echo "Installing Homebrew and packages..."
"$SCRIPT_DIR/brew.sh"

echo "Configuring macOS defaults..."
"$SCRIPT_DIR/defaults.sh"
