#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install Git & co.
brew install git
brew install hub
brew install git-lfs

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install Zsh
# Note: don’t forget to add `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install zsh

# Install neovim & vim
brew tap neovim/neovim
brew install neovim --HEAD
brew install vim --override-system-vi --disable-nls --with-lua --with-luajit

# Install Pandoc
brew install pandoc
brew install pandoc-citeproc

# Install Python, Ruby and Node & helpers
brew install python
brew install rbenv
brew install ruby-build
brew install nvm
brew install watchman

# Install AVR Toolchain
brew tap osx-cross/avr
brew install avr-libc

# Install ARM Toolchain
brew tap ladislas/arm
brew install arm-gcc

# Install other useful binaries.
brew install ack
brew install dark-mode
brew install imagemagick --with-webp
brew install graphviz
brew install rename
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install webkit2png
brew install whereami
brew install tmux

# Remove outdated versions from the cellar.
brew cleanup
