#!/bin/bash
echo "Copying over aliases"
cp ~/Projects/dotfiles/.aliases ~/.aliases
echo "Copying zshrc"
cat ~/Projects/dotfiles/.zshrc >> ~/.zshrc

if [[ "$OSTYPE" == "darwin"* ]]; then
    ./macos/macos.sh
    ./macos/brew.sh
fi

echo "Setting up git"
./git/aliases.sh
./git/config.sh

echo "Finished"
