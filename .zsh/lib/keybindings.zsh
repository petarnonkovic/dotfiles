#!/usr/bin/env zsh

# FZF: Ctrl-O selection open in nvim
bindkey -s '^O' 'vi -p $(fzf)\n'
