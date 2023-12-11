#!/bin/bash

# This script installs a list of Visual Studio Code (VSCodium) extensions.
# The packagelist is the output from "codium --list-extensions"
extensions=(
    bradlc.vscode-tailwindcss
    dbaeumer.vscode-eslint
    dracula-theme.theme-dracula
    esbenp.prettier-vscode
    formulahendry.auto-close-tag
    formulahendry.auto-rename-tag
    mechatroner.rainbow-csv
    ms-python.python
    oderwat.indent-rainbow
    PKief.material-icon-theme
)

for extension in "${extensions[@]}"; do
    codium --install-extension "$extension"
done
