#!/bin/bash

xdg-settings set default-web-browser brave-browser.desktop

# Do not want this to run on startup
rm -f "$HOME/.config/autostart/cachyos-hello.desktop"
