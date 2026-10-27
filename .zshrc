export PATH="/opt/homebrew/bin:$PATH"
export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"

# Enable command auto-completion
autoload -Uz compinit
compinit

# aliases (shared with bash)
[ -f ~/.sh_aliases ] && . ~/.sh_aliases
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

export PATH="$HOME/bin:$PATH"

export PATH="$HOME/.pyenv/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
