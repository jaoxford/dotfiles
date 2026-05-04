#!/bin/bash

xdg-settings set default-web-browser brave-origin-beta.desktop

# Do not want this to run on startup
rm -f "$HOME/.config/autostart/cachyos-hello.desktop"

# Want to cut down on blue lights at night
kwriteconfig6 --notify --file kwinrc --group NightColor --key Active true
