#!/bin/bash

set -e  # Exit on error

echo "Installing packages from official repos..."
sudo pacman -S --needed --noconfirm \
    speedtest-cli \
    pycharm-community-edition \
    uv \
    claude-code \
    zed

echo "Installing AUR packages..."
yay -S --needed --noconfirm \
    render-cli-bin

echo ""
echo "After first launching PyCharm, add this to Help → Edit Custom VM Options:"
echo "-Dawt.toolkit.name=WLToolkit"
echo ""
read -p "Press Enter to acknowledge..."
