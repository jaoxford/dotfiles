#!/bin/bash

set -e

sudo pacman -S --needed --noconfirm \
    anki \
    bitwarden \
    brave-origin-bin \
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
    nicotine+ \
    onlyoffice-bin \
    proton-vpn-gtk-app \
    qbittorrent \
    speedtest-cli \
    spek \
    strawberry \
    wl-clipboard \
    vlc \
    zed

paru -S --needed --noconfirm \
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
