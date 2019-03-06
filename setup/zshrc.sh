#! /usr/bin/env bash

touch ~/.zshrc

if ! grep -q '.dotfiles/zshrc' ~/.zshrc; then
  'source ~/.dotfiles/zshrc' >> ~/.zshrc
fi

