#!/bin/bash

echo "Setting up Omarchy..."

echo "Updating system and installing packages from official repos..."
sudo pacman -Syu --needed --noconfirm \
    speedtest-cli \
    telegram-desktop \
    pycharm-community-edition \
    code

echo ""
echo "After first launching PyCharm, add this to Help → Edit Custom VM Options:"
echo "-Dawt.toolkit.name=WLToolkit"
echo ""
read -p "Press Enter to acknowledge..."
