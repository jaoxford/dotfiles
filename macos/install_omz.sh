#!/bin/bash

set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

DRACULA_DIR="$HOME/.oh-my-zsh/custom/themes/dracula"

if [ ! -d "$DRACULA_DIR" ]; then
    git clone https://github.com/dracula/zsh.git "$DRACULA_DIR"
fi

ln -sf "$DRACULA_DIR/dracula.zsh-theme" "$HOME/.oh-my-zsh/themes/dracula.zsh-theme"
