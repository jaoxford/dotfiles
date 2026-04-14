#!/bin/bash

set -e  # Exit on error

sudo pacman -S --needed --noconfirm \
    speedtest-cli \
    pycharm-community-edition \
    uv \
    claude-code \
    zed \
    cmatrix \
    lazydocker

# Water Direct AUR packages
yay -S --needed --noconfirm \
    render-cli-bin \
    slack-desktop-wayland \
    clickup

echo ""
echo "After first launching PyCharm, add this to Help → Edit Custom VM Options:"
echo "-Dawt.toolkit.name=WLToolkit"
echo ""
read -p "Press Enter to acknowledge..."
