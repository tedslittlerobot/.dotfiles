
alias ll='ls -GCAlh'
export FZF_COMPLETION_TRIGGER='§§'

alias dotgit="git -C ~/.dotfiles"
alias dotupdate="dotgit pull && source ~/.zshrc"

## A helper function to change the current directory to a
#   subdirectory of ~/projects.
function pd() {
	if [[ -z $1 ]]; then
		cd ~/projects
		return
	fi

    cd ~/projects/$1
}

function ansicolours {
	# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

	#
	#   This file echoes a bunch of color codes to the
	#   terminal to demonstrate what's available.  Each
	#   line is the color code of one forground color,
	#   out of 17 (default + 16 escapes), followed by a
	#   test use of that color on all nine background
	#   colors (default + 8 escapes).
	#

	T='gYw'   # The test text

	echo -e "\n                 40m     41m     42m     43m\
	     44m     45m     46m     47m";

	for FGs in '    m' '   1m' '  30m' '1;30m' '  31m' '1;31m' '  32m' \
	           '1;32m' '  33m' '1;33m' '  34m' '1;34m' '  35m' '1;35m' \
	           '  36m' '1;36m' '  37m' '1;37m';
	  do FG=${FGs// /}
	  echo -en " $FGs \033[$FG  $T  "
	  for BG in 40m 41m 42m 43m 44m 45m 46m 47m;
	    do echo -en "$EINS \033[$FG\033[$BG  $T  \033[0m";
	  done
	  echo;
	done
	echo
}

function notes-todo {
	test -z $1 && echo "Specify a folder to test" >&2 && return

	echo
	echo '\033[7;4m\033[1;36m@todo\033[0m\033[0m'

	grep '\(\@todo.*$\)' -rno $1 | awk -F: '{printf "\033[1;34m%s\033[0m \033[0;37m(\033[0m\033[0;31m%s\033[0m:\033[0;33m%s\033[0m\033[0;37m)\033[0m\n", $3, $1, $2}'
}

function ql {
	qlmanage -p "$@" >& /dev/null
}
