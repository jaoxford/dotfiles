#!/bin/bash

set -e  # Exit on error

DOTFILES_DIRECTORY="$HOME/Projects/dotfiles"
export DOTFILES_DIRECTORY

echo "Copying over aliases to $HOME/.aliases"
cp "$DOTFILES_DIRECTORY/.aliases" "$HOME/.aliases"
echo "Appending zshrc to $HOME/.zshrc"
cat "$DOTFILES_DIRECTORY/.zshrc" >> "$HOME/.zshrc"

echo "Copying gitignore from $DOTFILES_DIRECTORY/git/global_gitignore to $HOME/.gitignore"
cp "$DOTFILES_DIRECTORY/git/global_gitignore" "$HOME/.gitignore"

if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Running macOS specific setup"
    "$DOTFILES_DIRECTORY/macos/macos.sh"
    "$DOTFILES_DIRECTORY/macos/brew.sh"
fi

echo "Setting up git"
"$DOTFILES_DIRECTORY/git/aliases.sh"
"$DOTFILES_DIRECTORY/git/config.sh"

# echo "Copying tmux config to $HOME/.config/tmux/tmux.conf."
# mkdir -p "$HOME/.config/tmux" && cp "$DOTFILES_DIRECTORY/tmux/.tmux.conf" "$HOME/.config/tmux/tmux.conf"

echo "Finished"
