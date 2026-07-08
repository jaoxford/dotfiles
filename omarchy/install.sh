#!/bin/bash

set -e  # Exit on error

sudo pacman -S --needed --noconfirm \
    speedtest-cli \
    uv \
    claude-code \
    zed \
    cmatrix \
    lazydocker

yay -S --needed --noconfirm \
    helium-browser-bin \
    yaak-bin

# Water Direct AUR packages
yay -S --needed --noconfirm \
    render-cli-bin \
    slack-desktop-wayland \
    clickup \
    pycharm \
    teams-for-linux
