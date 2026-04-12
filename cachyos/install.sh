#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm \
    brave-bin \
    cachyos-gaming-applications \
    cachyos-gaming-meta \
    claude-code \
    ghostty \
    lazygit \
    proton-vpn-gtk-app \
    strawberry \
    zed

paru -S --needed --noconfirm \
    flycast
