#!/bin/bash

set -e  # Exit on error

echo "Uninstalling packages that came with omarchy..."
sudo pacman -Rs \
    1password-beta \
    1password-cli \
    aether \
    obsidian \
    obs-studio \
    signal-desktop
