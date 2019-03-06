source zsh/oh-my-zsh.zsh
eval "$(rbenv init -)"
source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source zsh/paths.zsh
source zsh/alias-git.zsh
source zsh/alias-general.zsh
source zsh/exports.zsh
source zsh/general.zsh

# Load in any user zsh files in the ~/.zsh directory
if [ -d ~/.zsh ]; then
	for file in ~/.zsh/*; do
		source "$file"
	done
fi

