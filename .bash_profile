export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"

# bash completion
[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# aliases (shared with zsh)
[ -f ~/.sh_aliases ] && . ~/.sh_aliases
