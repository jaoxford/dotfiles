#!/bin/bash

set -e  # Exit on error

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Check the known install path directly — brew may not be on PATH yet for new users
BREW=/opt/homebrew/bin/brew

if ! command -v brew &> /dev/null && [[ ! -x "$BREW" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Put brew on PATH for the rest of this script (handles users who haven't linked .zprofile yet)
eval "$("${BREW:-$(which brew)}" shellenv)"

brew bundle check --file="$SCRIPT_DIR/Brewfile" || brew bundle install --file="$SCRIPT_DIR/Brewfile"

# For Yazi
brew link ffmpeg-full imagemagick-full -f --overwrite

"$SCRIPT_DIR/install_janky_borders.sh"
