#!/bin/bash

set -e

if pacman -Qi alacritty &>/dev/null; then
    sudo pacman -Rs \
        alacritty
fi
