# Dotfiles for Mac

Personal macOS dotfiles and a bootstrap script.
Built for **Apple Silicon** (installs Homebrew to `/opt/homebrew`).

## 1. Install packages
Installs Xcode command line tools, Homebrew, CLI tools, GUI apps and the
latest Python (via pyenv):

> ./install.sh

Afterwards **restart your terminal** so `brew` and `pyenv` are active.

## 2. Apply dotfiles
Diff and copy the config files you want into your home directory:

- `.zshrc` - zsh (login shell)
- `.bash_profile` - bash
- `.sh_aliases` - shared aliases, sourced by both of the above

> cp .zshrc .bash_profile .sh_aliases ~/

Then reload: `source ~/.zshrc`

## License
MIT - see [LICENSE](LICENSE).
