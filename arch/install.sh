#!/bin/bash

echo "Setting up Omarchy..."

echo "Updating system and installing packages from official repos..."
sudo pacman -Syu --needed --noconfirm \
    speedtest-cli \
    telegram-desktop \
    pycharm-community-edition \
    code
