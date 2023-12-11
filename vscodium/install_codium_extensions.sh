#!/bin/bash

# This script installs a list of Visual Studio Code (VSCodium) extensions.
# Extensions are read from "extensions_list.txt"

while IFS= read -r extension; do
    codium --install-extension "$extension"
done < vscodium/extensions_list.txt
