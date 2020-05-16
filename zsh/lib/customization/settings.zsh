#!/usr/bin/env zsh


## History options

setopt hist_ignore_all_dups   # ignore duplicated commands history list
setopt hist_save_no_dups
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history
setopt csh_junkie_history
setopt csh_null_glob

# enable local_options & local_traps
setopt local_traps local_options

# so equals test works [ "$1" == "value" ]
# see http://www.zsh.org/mla/users/2011/msg00161.html
unsetopt equals

# disable sound beep
setopt no_beep no_hist_beep
unsetopt list_beep

setopt prompt_subst # enable parameters substitution in prompt
setopt prompt_percent

## Jobs
setopt long_list_jobs

## Recognize comments, other settings
setopt interactivecomments
setopt multios
