#!/bin/bash
git config --global user.name "Jacob Oxford"
git config --global user.email "jacoboxford12345@gmail.com"

# Tries to automatically apply same changes done during rebase / cherry pick
git config --global rerere.enabled true
# Sort branches by latest commits at top
git config --global branch.sort -committerdate
# Sign commits by SSH rather than GPG
git config gpg.format ssh
# Location of SSH key for signing
git config user.signingkey ~/.ssh/id_ed25519.pub
# Automatically run git maintenance
git maintenance start
