#!/bin/bash

sudo pacman -S --needed --noconfirm \
    yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )

"$DOTFILES_DIR/yazi/install_dracula_yazi.sh"
