#!/bin/bash

YAZI_DIR="$HOME/.config/yazi/flavors"
if [ ! -d "$YAZI_DIR" ]; then
    git clone https://github.com/dracula/yazi.git "$HOME/.config/yazi/flavors/dracula.yazi"
fi

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ln -sf "$SCRIPT_DIR/.config/yazi/yazi.toml" "$HOME/.config/yazi/yazi.toml"
ln -sf "$SCRIPT_DIR/.config/yazi/theme.toml" "$HOME/.config/yazi/theme.toml"
