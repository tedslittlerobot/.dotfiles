#! /usr/bin/env bash

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -S ~/.dotfiles/links/init.vim ~/.config/nvim/init.vim

touch ~/.zshrc
if ! grep -q '.dotfiles/zshrc' ~/.zshrc; then
  'source ~/.dotfiles/zshrc' >> ~/.zshrc
fi

rm -f ~/.ctags
ln -S ~/.dotfiles/links/.ctags ~/.ctags
