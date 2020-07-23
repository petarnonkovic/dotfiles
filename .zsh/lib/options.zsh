#!/usr/bin/env/ zsh


### Directories

setopt auto_cd

setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_minus
setopt pushd_silent
setopt pushd_to_home

### History

setopt bang_hist
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_expire_dups_first
setopt hist_verify
setopt share_history
setopt inc_append_history
setopt csh_junkie_history
setopt csh_null_glob


### so equals test works [ "$1" == "value" ]
unsetopt equals

### Disable all sounds
setopt no_beep no_hist_beep
unsetopt list_beep

### Prompt config
setopt prompt_subst
setopt prompt_percent

### Jobs
setopt auto_continue
setopt long_list_jobs
setopt notify

### Recognize comments, other settings
setopt interactivecomments
setopt multios

#### Completion options

unsetopt menu_complete   # do not autoselect the first completion entry

setopt auto_menu         # show completion menu on successive tab press
setopt always_to_end
setopt auto_param_slash
setopt complete_aliases
setopt glob_complete
setopt extended_glob
setopt no_case_glob
setopt glob_dots
setopt markdirs
