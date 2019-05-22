#! /usr/bin/env bash

bash install/homebrew.sh
bash install/language-setup.sh
bash install/php-packages.sh
bash install/node-modules.sh
bash install/oh-my-zsh.sh

bash setup/link.sh
bash setup/zshrc.sh
bash setup/dnsmasq.sh

# https://github.com/driesvints/dotfiles
# https://github.com/mathiasbynens/dotfiles
