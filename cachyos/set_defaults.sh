#!/bin/bash

xdg-settings set default-web-browser brave-browser.desktop

# Do not want this to run on startup
rm -f "$HOME/.config/autostart/cachyos-hello.desktop"

# Want to cut down on blue lights at night
# Changes may not apply until next login
kwriteconfig6 --file kwinrc --group NightColor --key Active true
