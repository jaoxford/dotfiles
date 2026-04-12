#!/bin/bash

set -euo pipefail

ARCHIVE_URL="https://github.com/trzy/Supermodel/releases/download/v0.3a-20260228-git-d6dec3d/supermodel-0.3a-20260228-git-d6dec3d-linux.tar.gz"

sudo pacman -S --needed --noconfirm \
    sdl2_net

INSTALL_DIR="$HOME/.local/share/supermodel"

if [ ! -d "$INSTALL_DIR" ]; then
    mkdir -p "$INSTALL_DIR"
    curl -fL "$ARCHIVE_URL" | tar -xz -C "$INSTALL_DIR" --strip-components=1
fi

# Want Supermodel to show up in list of binaries
ln -sf "$INSTALL_DIR/supermodel" "$HOME/.local/bin/supermodel"
