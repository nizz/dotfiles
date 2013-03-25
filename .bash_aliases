# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

# some more ls aliases
alias ll='ls -la'
#alias la='ls -A'
#alias l='ls -CF'
alias cd..='cd ..'
alias ..='cd ..'
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias back='cd $OLDPWD'


#be polite
alias please='sudo '

# `cat` with beautiful colors. requires Pygments installed.
# # sudo easy_install Pygments
alias c='pygmentize -O style=monokai -f console256 -g'


