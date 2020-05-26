#!/usr/bin/env zsh


# System clipboard integration
#

# Defines two functions, clipcopy and clippaste
##
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
#
# clippaste - "Paste" data from clipboard to stdout
#
# Usage:
#
#   clippaste   - writes clipboard's contents to stdout
#
#   clippaste | <command>    - pastes contents and pipes it to another process
#
#   clippaste > <file>      - paste contents to a file
#
# Examples:
#
#   # Pipe to another process
#   clippaste | grep foo
#
#   # Paste to a file
#   clippaste > file.txt
#


function detect-clipboard() {
  emulate -L zsh
  
  function clipcopy() { xclip -in -selection clipboard < "${1:-/dev/stdin}"; }
  function clippaste() { xclip -out -selection clipboard; }
  
  
}

detect-clipboard || true

