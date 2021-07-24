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
  gdbm \
  gettext \
  git \
  k9s \
  libzip \
  md5sha1sum \
  mpdecimal \
  openssl@1.1 \
  pcre \
  pcre2 \
  python@3.9 \
  readline \
  sqlite \
  the_silver_searcher \
  tldr \
  tree \
  xz \
  font-hack-nerd-font \
  postman
