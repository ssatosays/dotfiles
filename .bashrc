# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=100000
HISTFILESIZE=100000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
    fi
fi

# source .git-prompt.sh
if [ -f ~/.git-prompt.sh ]; then
    . ~/.git-prompt.sh
fi

# source .bash_prompt
if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

# start dir
cd ~/develop
