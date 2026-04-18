#!/bin/bash

NEOVIM_CONFIG_DIR="$HOME/.config/nvim"
if [ ! -d "$NEOVIM_CONFIG_DIR" ]; then
    git clone https://github.com/LazyVim/starter "$NEOVIM_CONFIG_DIR"
fi

rm -rf ~/.config/nvim/.git
