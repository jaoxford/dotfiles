#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )
CONFIG_DIR="${XDG_CONFIG_HOME}"

ln -sf "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"

ln -sf "$SCRIPT_DIR/.bashrc" "$HOME/.bashrc"

ln -sf "$SCRIPT_DIR/.config/hypr/bindings.conf" "$CONFIG_DIR/hypr/bindings.conf"
ln -sf "$SCRIPT_DIR/.config/hypr/input.conf" "$CONFIG_DIR/hypr/input.conf"
ln -sf "$SCRIPT_DIR/.config/hypr/monitors.conf" "$CONFIG_DIR/hypr/monitors.conf"
ln -sf "$SCRIPT_DIR/.config/uwsm/default" "$CONFIG_DIR/uwsm/default"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$CONFIG_DIR/zed/settings.json"
ln -sf "$SCRIPT_DIR/gnupg/gpg-agent.conf" "$HOME/.gnupg/gpg-agent.conf"
ln -sf "$DOTFILES_DIR/nvim/options.lua" "$HOME/.config/nvim/lua/config/options.lua"
ln -sf "$DOTFILES_DIR/nvim/plugins/colorscheme.lua" "$CONFIG_DIR/nvim/lua/plugins/colorscheme.lua"
ln -sf "$SCRIPT_DIR/.config/ghostty/config.ghostty" "$CONFIG_DIR/omarchy/current/theme/ghostty.conf"
ln -sf "$SCRIPT_DIR/bin/omarchy-launch-cmatrix-screensaver" "$HOME/.local/bin/omarchy-launch-cmatrix-screensaver"
mkdir -p "$HOME/.config/yazi" && ln -sf "$DOTFILES_DIR/yazi/yazi.toml" "$HOME/.config/yazi/yazi.toml"
