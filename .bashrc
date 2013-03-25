# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
[[ -f /etc/profile.d/bash-completion ]] && source /etc/profile.d/bash-completion

# include aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups


##functions
extract () {
if [ -f $1 ] ; then
	case $1 in
		*.tar.bz2)	tar xjf $1		;;
		*.tar.gz)	tar xzf $1		;;
		*.bz2)		bunzip2 $1		;;
		*.rar)		rar x $1		;;
		*.gz)		gunzip $1		;;
		*.tar)		tar xf $1		;;
		*.tbz2)		tar xjf $1		;;
		*.tgz)		tar xzf $1		;;
		*.zip)		unzip $1		;;
		*.Z)		uncompress $1	;;
		*)		echo "'$1' cannot be extracted via extract()" ;;
	esac
else
	echo "'$1' is not a valid file"
fi
}

# backup 
bu () { cp $1 ~/.backup/`basename $1`-`date +%Y%m%d%H%M`.backup ; }

# functions so you don't have to type '&' for graphical binaries
function gedit
{
	command gedit "$@" &
}

