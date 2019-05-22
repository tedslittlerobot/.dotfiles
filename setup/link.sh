#! /usr/bin/env bash

mkdir -p ~/.config/nvim
rm -f ~/.config/nvim/init.vim
ln -s ~/.dotfiles/links/init.vim ~/.config/nvim/init.vim

rm -f ~/.ctags
ln -s ~/.dotfiles/links/.ctags ~/.ctags
