#!/bin/bash

set -e  # Exit on error

# How do I get the directory where a Bash script is located from within the script itself?
# https://stackoverflow.com/a/246128/4044560
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DOTFILES_DIR=$( cd -- "$SCRIPT_DIR/.." &> /dev/null && pwd )

"$SCRIPT_DIR/change_to_zsh.sh"
"$SCRIPT_DIR/install.sh"
"$SCRIPT_DIR/link.sh"
"$DOTFILES_DIR/nvim/install_lazyvim.sh"
"$SCRIPT_DIR/install_yazi.sh"
"$SCRIPT_DIR/install_uv.sh"
"$SCRIPT_DIR/install_dracula_nchat.sh"
"$SCRIPT_DIR/uninstall.sh"
"$SCRIPT_DIR/set_defaults.sh"

# Change this from
# GRUB_GFXMODE=auto
# to
# GRUB_GFXMODE=1280x720
# If keyboard input in GRUB is slow to respond
# in /etc/default/grub
# Then you will need to update the grub config with
# sudo grub-mkconfig -o /boot/grub/grub.cfg
# Then a sudo reboot
