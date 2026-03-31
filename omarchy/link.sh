#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )
CONFIG_DIR="${XDG_CONFIG_HOME}"

echo "Linking config files..."

ln -sf "$DOTFILES_DIR/git/global_gitignore" "$HOME/.gitignore"

ln -sf "$SCRIPT_DIR/.config/hypr/bindings.conf" "$CONFIG_DIR/hypr/bindings.conf"
ln -sf "$SCRIPT_DIR/.config/hypr/input.conf" "$CONFIG_DIR/hypr/input.conf"
ln -sf "$SCRIPT_DIR/.config/hypr/monitors.conf" "$CONFIG_DIR/hypr/monitors.conf"
ln -sf "$SCRIPT_DIR/.config/uwsm/default" "$CONFIG_DIR/uwsm/default"
ln -sf "$DOTFILES_DIR/zed/settings.json" "$CONFIG_DIR/zed/settings.json"
mkdir -p "$CONFIG_DIR/gnupg/" && ln -sf "$DOTFILES_DIR/gnupg/gpg-agent.conf" "$CONFIG_DIR/gnupg/gpg-agent.conf"
