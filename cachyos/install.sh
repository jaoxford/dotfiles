#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm \
    anki \
    btop \
    cmatrix \
    cachyos-gaming-applications \
    cachyos-gaming-meta \
    claude-code \
    fbneo-git \
    ghostty \
    helium-browser-bin \
    hugo \
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
    brave-origin-beta-bin \
    cliamp-bin \
    duckstation-qt-bin \
    flycast \
    nchat \
    opendeck-bin \
    pcsx2-latest-bin \
    stash-bin \
    supermodel \
    xemu-bin

mkdir -p "$HOME/.local/share/supermodel/ROMs"
