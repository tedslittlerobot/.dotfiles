#! /usr/bin/env zsh

# {{{ Laravel

alias ads='artisan dump-server'
alias art='artisan'
alias console='php console'

# }}}

# {{{ Editor

alias vi='nvim'
alias vim='nvim'
alias vzrc='vi ~/.zshrc'
alias vvrc='vi ~/.config/nvim/init.vim'
alias ctags="`brew --prefix`/bin/ctags"
alias pstt='pst .'

# }}}

# {{{ PHP / Composer

alias phpu='./vendor/bin/phpunit'
alias cmpi='composer install'
alias cmpu='composer update'
alias cmpr='composer require'
alias cmpdu='composer dump-autoload'
alias cmps='composer show --tree'

# }}}

# {{{ Misc

# sudo the last command
alias ffs='sudo $(fc -ln -1)'
alias https='http --default-scheme=https'

# }}}
