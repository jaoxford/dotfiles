#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm \
    anki \
    brave-bin \
    cachyos-gaming-applications \
    cachyos-gaming-meta \
    claude-code \
    fbneo-git \
    ghostty \
    lazygit \
    mame \
    proton-vpn-gtk-app \
    speedtest-cli \
    strawberry \
    zed

paru -S --needed --noconfirm \
    duckstation-qt-bin \
    flycast \
    pcsx2 \
    stash-bin \
    supermodel

mkdir -p "$HOME/.local/share/supermodel/ROMs"
