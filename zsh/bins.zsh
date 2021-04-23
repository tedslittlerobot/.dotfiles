#! /usr/bin/env zsh

export PATH=$PATH:${DOTFILES_ROOT}/bin
export fpath=($DOTFILES_ROOT/bin $fpath)
autoload -Uz compinit
compinit -u
