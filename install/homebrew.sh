#! /usr/bin/env bash

if ! [ -x "$(command -v brew)" ]; then
	echo 'Installing Homebrew'
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'Running Homebrew Updates'
brew update
brew upgrade

echo 'Running Brewfile'
brew bundle --file=~/.dotfiles/install/Brewfile

echo 'Final Updates'
brew upgrade

echo 'Cleaning up Homebrew'
brew cleanup

# Any other links or config setup from the Brewfile
qlmanage -r
