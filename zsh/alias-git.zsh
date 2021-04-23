#! /usr/bin/env zsh

alias gitbattle='git shortlog -s -n'

# Un-does the latest commit, restoring everything to the git stage
alias gfuck='git reset HEAD~'

alias gfap='git fetch --all --prune'
alias ggpuush='ggpush -u'

# OMZ overrides
alias gd='git diff --word-diff=color'
alias gds='gd --cached'
alias gclean='git clean -dx'
alias gcleanf='git clean -fdx'

alias gmom="git merge origin/master"
alias gmod="git merge origin/develop"

# Start a new branch off of master
function gcbom() {
	if [[ -z $1 ]]; then
		echo "Cannot checkout nothing."
		return 1
	fi
	gfap && gcb $1 origin/master
}

# Start a new branch off of develop
function gcbod() {
	if [[ -z $1 ]]; then
		echo "Cannot checkout nothing."
		return 1
	fi
	gfap && gcb $1 origin/develop
}

# Push and open any links in the outputs
function glgpush() {
	GLPUUSH_GIT_OUTPUT=`ggpuush 2>&1`
	GLPUUSH_MR_LINK=`echo $GLPUUSH_GIT_OUTPUT | grep "https" | awk '{print $2}'`

	echo $GLPUUSH_GIT_OUTPUT

	if [[ ! -z $GLPUUSH_MR_LINK ]]; then
		open $GLPUUSH_MR_LINK
	fi
}
