#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )

ln -sf "$SCRIPT_DIR/.aliases" "$HOME/.aliases"
ln -sf "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$HOME/.config/zed/settings.json"
mkdir -p "$HOME/.config/ghostty" && ln -sf "$SCRIPT_DIR/.config/ghostty/config.ghostty" "$HOME/.config/ghostty/config.ghostty"
mkdir -p "$HOME/.config/nvim/lua/plugins" && ln -sf "$DOTFILES_DIR/nvim/plugins/colorscheme.lua" "$HOME/.config/nvim/lua/plugins/colorscheme.lua"
mkdir -p "$HOME/.gnupg" && ln -sf "$SCRIPT_DIR/.config/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sf "$SCRIPT_DIR/.config/nvim/options.lua" "$HOME/.config/nvim/options.lua"
ln -sf "$SCRIPT_DIR/.aerospace.toml" "$HOME/.aerospace.toml"
