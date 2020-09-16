#!/usr/bin/env zsh



### Variables
#=======================

# Get out the SHORT hostname
SHORT_HOST=${HOST/.*/}

# Save the location of the current completion dump file.
ZSH_COMPDUMP="${ZSH_CACHE_DIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"


### Functions
#=======================

function load_config_files() {
  typeset -a files
  files=($@)
  
  for file in ${files}; do
    [[ -f ${file} ]] && source ${file}
  done
}


### zShell paths
#=======================

# Set CDPATH
typeset -gU cdpath
cdpath=(
  $cdpath
  ~/Projects
)

# Set FPATH 
typeset -U fpath
fpath=($ZSH/functions $fpath)


### Init autoloading
#=======================

autoload Uz compinit
compinit -u -C -d "${ZSH_COMPDUMP}"


### Load configuration files
#=======================


## Settings
FILES=(
    $ZSH/lib/options.zsh
    $ZSH/lib/prompt.zsh
    $ZSH/lib/keybindings.zsh
    $ZSH/lib/functions.zsh
    $ZSH/lib/grep.zsh
    $ZSH/lib/completion.zsh
)

load_config_files ${FILES}


## Wigets

# Widgets directory
WIDGET_DIR=$ZSH/lib/widgets

[[ -f ${WIDGET_DIR/fancy_ctrl_z.zsh} ]] && source ${WIDGET_DIR/fancy_ctrl_z.zsh}


## Plugins 

# FZF
[[ -f ${HOME/.dotfiles/fzf.zsh} ]] && source ${HOME/.dotfiles/plugins/fzf.zsh}


### Clean Up
#=======================

unset FILES WIDGET_DIR
unfunction load_config_files
