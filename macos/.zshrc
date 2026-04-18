# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="dracula"
ENABLE_CORRECTION="true"

plugins=(git macos colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"

export PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"

download_mp3() {
    yt-dlp -x --audio-format mp3 --audio-quality 0 "$1"
}

download_transcription() {
    cd "$HOME/Music/Transcribing"
    download_mp3 "$1"
    cd -
}

create_commented_banner() {
    local text=$1  # Capture the input text as a local variable
    figlet "$text" | sed 's/^/# /'  # Generate banner and prefix each line with '# '
}

create_commented_banner_for_windows() {
  local text="$1"
  echo "::"
  figlet "$text" | sed 's/^/:: /'  # Prefix each line with ':: ' for batch comments
  echo "::"
}

# https://yazi-rs.github.io/docs/quick-start/#shell-wrapper
# We suggest using this y shell wrapper that provides the ability to change the current working directory when exiting Yazi.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

eval "$(zoxide init zsh --cmd cd)"
