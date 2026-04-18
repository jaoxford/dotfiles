#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )
CONFIG_DIR="${HOME}/.config"

ln -sf "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"
ln -sf "$SCRIPT_DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$CONFIG_DIR/zed/settings.json"
ln -sf "$SCRIPT_DIR/.config/ghostty/config.ghostty" "$HOME/.config/ghostty/config.ghostty"
ln -sf "$SCRIPT_DIR/.config/kcminputrc" "$HOME/.config/kcminputrc"
ln -sf "$SCRIPT_DIR/applications/stash.desktop" "$HOME/.local/share/applications/stash.desktop"
ln -sf "$DOTFILES_DIR/nvim/plugins/colorscheme.lua" "$HOME/.config/nvim/lua/plugins/colorscheme.lua"
ln -sf "$DOTFILES_DIR/nvim/options.lua" "$HOME/.config/nvim/options.lua"
