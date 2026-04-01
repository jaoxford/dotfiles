#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )

echo "Linking config files..."
ln -sf "$SCRIPT_DIR/.aliases" "$HOME/.aliases"
ln -sf "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$HOME/.config/zed/settings.json"
mkdir -p "$HOME/.config/ghostty" && ln -sf "$DOTFILES_DIR/ghostty/config.ghostty" "$HOME/.config/ghostty/config.ghostty"
mkdir -p "$HOME/.gnupg" && ln -sf "$SCRIPT_DIR/.config/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
