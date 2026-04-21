# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
alias vim='nvim'
alias lg='lazygit'
alias ss='cmatrix -a -b -s -u 3'
# -r prevents xargs from running git branch -d with no args when there are no merged branches to delete (GNU xargs only, not macOS)
alias delete_merged_branches='git branch --merged | grep -Ev "(^\*|master|main|dev|skip_branch_name)" | xargs -r git branch -d'

# https://yazi-rs.github.io/docs/quick-start/#shell-wrapper
# We suggest using this y shell wrapper that provides the ability to change the current working directory when exiting Yazi.
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	command yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ "$cwd" != "$PWD" ] && [ -d "$cwd" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}
