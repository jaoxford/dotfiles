source $HOME/.aliases

export EDITOR='vim'

create_commented_banner() {
    local text=$1  # Capture the input text as a local variable
    figlet "$text" | sed 's/^/# /'  # Generate banner and prefix each line with '# '
}
