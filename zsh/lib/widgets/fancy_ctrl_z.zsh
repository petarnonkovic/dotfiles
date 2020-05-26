#!/usr/bin/env zsh

# <Ctrl-Z> to switch vim/shell job control process bg/fg vim
fancy-ctrl-z () {
  if [[ $BUFFER -eq 0 ]]; then
    BUFFER='fg'
    zle accept-line
  else
    zle push-input
    zle clean-screen
  fi
}

# Bind to key
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
