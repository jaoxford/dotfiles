#!/bin/bash

OS=$(uname -s)

if [ "$OS" == "Linux" ]; then
    SOURCE_FILE="$HOME/.config/VSCodium/User/settings.json"
elif [ "$OS" == "Darwin" ]; then
    SOURCE_FILE="$HOME/Library/Application Support/VSCodium/User/settings.json"
else
    echo "Unknown operating system"
fi

DESTINATION_FILE="$HOME/Projects/dotfiles/vscodium/settings.json"

if [ -f "$SOURCE_FILE" ]; then
    cp "$SOURCE_FILE" "$DESTINATION_FILE"
else
    echo "Source file does not exist."
fi
