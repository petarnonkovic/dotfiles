#!/usr/bin/env zsh


### Variables

# Get out the SHORT hostname
SHORT_HOST=${HOST/.*/}

# Save the location of the current completion dump file.
ZSH_COMPDUMP="${ZSH_CACHE_DIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"


### Functions

function load_config_files() {
  typeset -a files
  files=($@)
  
  for file in ${files}; do
    [ -f ${file} ] && source ${file}
  done
}

# Set CDPATH
typeset -gU cdpath
cdpath=(
  $cdpath
  ~/Projects
)

# add a function path
typeset -U fpath
fpath=($ZSH/functions $fpath)

# Autoload from path
autoload Uz compinit
compinit -u -C -d "${ZSH_COMPDUMP}"


### Config files

FILES=(
    $ZSH/lib/options.zsh
    $ZSH/lib/settings.zsh
    $ZSH/lib/prompt.zsh
    $ZSH/lib/keybindings.zsh
    $ZSH/lib/functions.zsh
    $ZSH/lib/grep.zsh
    $ZSH/lib/spectrum.zsh
    $ZSH/lib/completion.zsh
)

load_config_files ${FILES}

unset FILES


### Wigets files

FILES=(
  $ZSH/lib/widgets/fancy_ctrl_z.zsh
)

load_config_files ${FILES}

unset FILES
