alias ipython='python -m IPython'
alias ll='exa -l --color-scale -a'
alias pycharm='open -na "PyCharm.app" --args "$@"'

eval "$(ssh-agent)"
ssh-add ~/.ssh/root_private_key_for_ansible

clear

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
