source ~/.dotfiles/zsh/oh-my-zsh.zsh
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.dotfiles/zsh/paths.zsh
source ~/.dotfiles/zsh/alias-git.zsh
source ~/.dotfiles/zsh/alias-general.zsh
source ~/.dotfiles/zsh/exports.zsh
source ~/.dotfiles/zsh/general.zsh
source ~/.dotfiles/zsh/php.zsh
source ~/.dotfiles/zsh/dnsmasq.zsh
source ~/.dotfiles/zsh/network.zsh

# Load in any user zsh files in the ~/.zsh directory
if [ -d ~/.zsh ]; then
	for file in ~/.zsh/*; do
		source "$file"
	done
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
