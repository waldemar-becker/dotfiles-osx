#!/usr/bin/env bash
# Bootstrap a fresh macOS (Apple Silicon) with my tools.
set -euo pipefail

echo "Installing Xcode command line tools:"
xcode-select --install || true

echo "Installing Homebrew:"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Installing CLI utilities:"
brew install \
  bash-completion \
  bat \
  colordiff \
  git \
  go-task \
  k9s \
  lsd \
  nmap \
  ollama \
  pyenv \
  ripgrep \
  tldr \
  tree \
  font-hack-nerd-font

echo "Installing GUI apps:"
brew install --cask \
  firefox \
  iterm2 \
  postman \
  rectangle \
  cursor

echo "Installing latest Python via pyenv:"
eval "$(pyenv init -)"  # activate shims so pip/python resolve to pyenv
latest_python="$(pyenv install --list | grep -E '^\s*3\.[0-9]+\.[0-9]+$' | tail -1 | tr -d ' ')"
pyenv install -s "$latest_python"
pyenv global "$latest_python"
pyenv rehash

echo "Installing Python packages:"
pip install -r requirements.txt
