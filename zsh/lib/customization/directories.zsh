#!/usr/bin/env zsh

## Changing/creating/removing/listing directory


setopt auto_cd              # optional use of CD command

# directory stack
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus
setopt pushd_silent
setopt pushd_to_home


alias ...=../..
alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias mkdir='mkdir -p'
alias md='mkdir -p'
alias rd=rmdir


# Create and enter directory
function take() {
  mkdir -p $@ && cd ${@:$#}
}

function mdcd() {
  mkdir -p $@ && cd "$_"
}

function d() {
  if [[ -n $1 ]]; then
    dirs -v "$@"
  else
    dirs -v | head -10
  fi
}
compdef _dirs d

# List directory contents
alias ls='ls --color=auto'
alias lr='ls -R'
alias la='ls -A'
alias ll='ls -lhA'
alias lsa='ls -lha'
alias ld='ls -d'


# tree - directory listing
alias tree='tree -C'
alias treea='tree -al'
alias treed='tree -dl'
alias treel='tree -L'
alias treef='tree -o'
