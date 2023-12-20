#!/bin/bash

# ~/.macos — https://mths.be/macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool "true"

# Disable press-and-hold for keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool "false"

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool "true"

# Finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool "true"

# Set the default search scope to current folder.
defaults write com.apple.finder FXDefaultSearchScope -bool "true"

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool "true"

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 10

###############################################################################
# Kill affected applications                                                  #
###############################################################################

# Define an array of applications
apps=(
  "Dock"
  "Finder"
)

# Loop through the array and kill each application
for app in "${apps[@]}"; do
  killall "$app" &> /dev/null
done

echo "Done. Note that some of these changes require a logout/restart to take effect."
