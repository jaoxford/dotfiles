#!/bin/bash

set -e  # Exit on error

sudo pacman -S --needed --noconfirm \
    brave-bin \
    claude-code \
    ghostty \
    lazygit \
    strawberry \
    zed
