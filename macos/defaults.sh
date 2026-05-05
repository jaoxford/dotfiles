#!/bin/bash

set -e  # Exit on error

# ~/.macos — https://mths.be/macos

# Close any open System Preferences panes, to prevent them from overriding
# settings we're about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Disable automatically adjust brightness
sudo defaults write /Library/Preferences/com.apple.iokit.AmbientLightSensor "Automatic Display Enabled" -bool false

# Display sleep after 10 minutes
sudo pmset -a displaysleep 10

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Use stacks on desktop
defaults write com.apple.finder UseStacks -bool true

# Disable wallpaper tinting in windows
defaults write NSGlobalDomain AppleReduceDesktopTinting -bool true

# Show battery percentage in menu bar
defaults write com.apple.controlcenter "Battery Show Percentage" -bool true

# Scrollbars: click to jump to position clicked
defaults write NSGlobalDomain AppleScrollerPagingBehavior -bool true

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool "true"

# Do not show recent applications in the dock
defaults write com.apple.dock "show-recents" -bool "false"

# Required by Scroll Reverser to independently control trackpad and mouse scroll direction
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool "false"

# Enable dragging with three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool "true"

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

# Finder: show path bar
defaults write com.apple.finder "ShowPathbar" -bool "false"

# Disable mouse acceleration
defaults write NSGlobalDomain com.apple.mouse.linear -bool "true"

# Disable Displays have separate Spaces
defaults write com.apple.spaces "spans-displays" -bool "true" && killall SystemUIServer

###############################################################################
# Scroll Reverser                                                             #
###############################################################################

# Reverse scrolling on
defaults write com.pilotmoon.scroll-reverser InvertScrollingOn -bool "true"

# Don't reverse mouse (only reverse trackpad)
defaults write com.pilotmoon.scroll-reverser ReverseMouse -bool "false"

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
  killall "$app" &> /dev/null || true
done

echo "Done. Note that some of these changes require a logout/restart to take effect."
