#!/usr/bin/env bash

echo "Installing cmd line tools for xcode:"
xcode-select --install

echo "Installing homebrew:"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing OSS utilities:"
brew install \
  bash-completion \
  bat \
  exa \
  git \
  k9s \
  libzip \
  python@3.9 \
  the_silver_searcher \
  tldr \
  tree \
  font-hack-nerd-font \
  postman

# Install apps with UI
brew install --cask \
  rectangle \
  iterm2 \
  firefox \
  google-chrome \
  macpass \
  spotify \
  pycharm \
  atom

# Install pip package manager
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py

# Install useful python packages
pip install -r requirements.txt