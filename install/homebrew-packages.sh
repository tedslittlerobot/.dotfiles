#! /usr/bin/env bash

brew update
brew upgrade

# Languages
brew install rbenv php node yarn composer

brew install coreutils moreutils findutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Language Helpers
brew install ctags 

# Editor
brew install neovim

# Network tools
brew install curl wget dnsmasq nmap

# Overrides
brew install git git-lfs openssh grep

# Other
brew install ledger

brew cleanup

