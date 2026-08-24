
eval "$(/opt/homebrew/bin/brew shellenv)"

# Had an issue where logging in between 2 users on macOS
# Would cause gpg agent to be stuck.
gpgconf --kill gpg-agent 2>/dev/null
gpg-connect-agent /bye 2>/dev/null
