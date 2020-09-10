# ZSH configuration directory
ZDOTDIR=$HOME/.zsh-config

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
    source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Personal bins
export PATH="${HOME}"/.bin:"${HOME}"/.cargo/bin:"${GOBIN:-$HOME/go/bin}":$PATH
