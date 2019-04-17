#! /usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
	echo 'Installing Homebrew'
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update
brew upgrade

brew bundle --file=~/.dotfiles/install/Brewfile

brew upgrade
brew cleanup

# Any other links or config setup from the Brewfile
qlmanage -r

