#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm \
    anki \
    brave-bin \
    cmatrix \
    cachyos-gaming-applications \
    cachyos-gaming-meta \
    claude-code \
    fbneo-git \
    ghostty \
    lazygit \
    kdenlive \
    mame \
    neovim \
    proton-vpn-gtk-app \
    speedtest-cli \
    strawberry \
    wl-clipboard \
    zed

paru -S --needed --noconfirm \
    duckstation-qt-bin \
    flycast \
    opendeck-bin \
    pcsx2-latest-bin \
    stash-bin \
    supermodel

mkdir -p "$HOME/.local/share/supermodel/ROMs"
