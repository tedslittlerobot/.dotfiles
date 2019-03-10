#! /usr/bin/env bash

# @todo - if brew doesn't exist, install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew bundle --file=~/.dotfiles/install/Brewfile
# Any other links from the Brewfile
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

brew bundle --file=~/.dotfiles/install/Caskfile

brew upgrade
brew cleanup

qlmanage -r

# @todo - check https://github.com/driesvints/dotfiles/blob/master/Brewfile
