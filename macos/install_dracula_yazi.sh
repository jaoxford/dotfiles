#!/bin/bash

ya pkg add yazi-rs/flavors:dracula
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
ln -sf "$SCRIPT_DIR/.config/yazi/yazi.toml" "$HOME/.config/yazi/yazi.toml"
ln -sf "$SCRIPT_DIR/.config/yazi/theme.toml" "$HOME/.config/yazi/theme.toml"
