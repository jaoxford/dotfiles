#!/bin/bash

ya pkg add yazi-rs/flavors:dracula
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )
mkdir -p "$HOME/.config/yazi"
ln -sf "$DOTFILES_DIR/yazi/theme.toml" "$HOME/.config/yazi/theme.toml"
