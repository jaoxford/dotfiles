#!/bin/bash

set -e  # Exit on error

sudo pacman -S --needed --noconfirm \
    brave-bin \
    zed \
    lazygit \
    claude-code
