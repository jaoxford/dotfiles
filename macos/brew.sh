#!/bin/bash

if ! which brew &> /dev/null; then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install figlet
brew install neovim
brew install --cask vscodium
brew install yt-dlp
brew install --cask brave-browser
brew install --cask firefox
brew install --cask rectangle
brew install --cask vlc
brew install bat
brew install --cask pycharm-ce
brew install tree
brew install --cask whatsapp
brew install --cask spotify
brew install tmux
brew install ripgrep
brew install --cask flameshot
brew install speedtest-cli
brew install --cask maccy
