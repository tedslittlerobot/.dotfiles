#! /usr/bin/env bash

touch ~/.zshrc

if ! grep -q '.dotfiles/zshrc' ~/.zshrc; then
  echo 'source ~/.dotfiles/zshrc' >> ~/.zshrc
fi

# Add minpac
git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
