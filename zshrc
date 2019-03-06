export ZSH=~/.oh-my-zsh

ZSH_THEME="pygmalion"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  atom
  sublime
  laravel
  docker
)

eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh

# User configuration
source ~/.zsh/*

export PATH=~/.composer/vendor/bin:$PATH
export PATH=/usr/local/opt/curl/bin:$PATH

alias ads='artisan dump-server'
alias ggpuush='ggpush -u'
alias console='php console'

alias gcsm='gc -S -m'
alias gcas='gc -S --amend'
alias gcasp='gcas && ggpush'

export VISUAL=nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ctags="`brew --prefix`/bin/ctags"

alias vi='nvim'
alias vim='nvim'
alias vzrc='vi ~/.zshrc'
alias vvrc='vi ~/.config/nvim/init.vim'

