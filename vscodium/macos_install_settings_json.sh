#!/bin/bash

SOURCE_FILE="$HOME/Projects/dotfiles/vscodium/settings.json"

DESTINATION_FILE="$HOME/Library/Application Support/VSCodium/User/settings.json"

if [ -f "$SOURCE_FILE" ]; then
    cp "$SOURCE_FILE" "$DESTINATION_FILE"
    echo "File copied successfully."
else
    echo "Source file does not exist."
fi
