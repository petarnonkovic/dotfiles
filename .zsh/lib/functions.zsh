#!/usr/bin/env zsh


###############################

# User defined functions

###############################




### Find project dir in ~/Projects
############################################
#
## Usage:  dp [project-dir]
#

function dp() {
  local basedir="$HOME/Projects"
  
  # Check if param exist
  if [[ $# -gt 0 ]]; then
    
    # If directory exists, jump to it
    if [[ -d "${basedir}/$1" ]]; then
      cd "${basedir}/$1"
      return 0
    fi
    
  fi
  
  # GoTo basedir and list directories
  cd "${basedir}"
  tree -dL 1
}


### Create & Enter directory
############################################

function mdcd() {
  mkdir -p $@ && cd ${@:$#}
  #mkdir -p $@ && cd "$_"
}

# Show zsh usage stats
############################################

function zsh_stats() {
  fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

### Man pages colorized output
############################################

function colored() {
  command env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    PAGER="${commands[less]:-$PAGER}" \
    _NROFF_U=1 \
    PATH="$HOME/bin:$PATH" \
      "$@"
}

# Colorize man and dman/debman (from debian-goodies)
############################################

function man \
  dman \
  debman {
  colored $0 "$@"
}

### System clipboard integration
############################################
#
#
# clipcopy - Copy data to clipboard
#
# Usage:
#
#  <command> | clipcopy    - copies stdin to clipboard
#
#  clipcopy <file>         - copies a file's contents to clipboard
#
##

function clipcopy() { xclip -in -selection clipboard < "${1:-/dev/stdin}"; }

# clippaste - "Paste" data from clipboard to stdout
#
# Usage:
#
#   clippaste   - writes clipboard's contents to stdout
#
#   clippaste | <command>    - pastes contents and pipes it to another process
#
#   clippaste > <file>      - paste contents to a file
##

function clippaste() { xclip -out -selection clipboard; }
