#!/bin/bash

set -e  # Exit on error

sudo pacman -S --needed --noconfirm \
    brave-bin \
    claude-code \
    lazygit \
    strawberry \
    zed
