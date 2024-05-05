source $HOME/.aliases

export EDITOR='vim'

start-fullpush() {
  open -a "Brave Browser"
  open -a "Docker"
  open -a "VSCodium"
  open -a "Intellij IDEA CE"
  tmuxinator start fullpush
}

create_commented_banner() {
    local text=$1  # Capture the input text as a local variable
    figlet "$text" | sed 's/^/# /'  # Generate banner and prefix each line with '# '
}
