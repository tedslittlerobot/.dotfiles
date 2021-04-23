#! /usr/bin/env zsh

export DOTFILES_ROOT=${DOTFILES_ROOT:-~/.dotfiles}

source ${DOTFILES_ROOT}/zsh/oh-my-zsh.zsh
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ${DOTFILES_ROOT}/zsh/paths.zsh
source ${DOTFILES_ROOT}/zsh/alias-git.zsh
source ${DOTFILES_ROOT}/zsh/alias-general.zsh
source ${DOTFILES_ROOT}/zsh/exports.zsh
source ${DOTFILES_ROOT}/zsh/general.zsh
source ${DOTFILES_ROOT}/zsh/bins.zsh
source ${DOTFILES_ROOT}/zsh/php.zsh
source ${DOTFILES_ROOT}/zsh/node.zsh
source ${DOTFILES_ROOT}/zsh/dnsmasq.zsh
source ${DOTFILES_ROOT}/zsh/network.zsh

# Load in any user zsh files in the ~/.zsh directory
if [ -d ~/.zsh ]; then
	for file in ~/.zsh/*; do
		source "$file"
	done
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
