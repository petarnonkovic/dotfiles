### Add directories to $path/PATH 

# TODO: Write function to check if path to be added already exists
# Set path
typeset -U path
path=($HOME/bin $HOME/.local/bin $path)
export PATH


### Configuration directories

# Main zshell dotfiles dir
export ZSH=$HOME/.dotfiles/.zsh

# Zshell cache dir
export ZSH_CACHE_DIR=$HOME/.cache/zsh


### Configuration variables

# Set editor to neovim
export EDITOR=$(which nvim)

# History
export HISTFILE=$ZSH_CACHE_DIR/.zsh_history
export HISTSIZE=50000
export SAVEHIST=10000

# "ls" command - directory content list config
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacxx
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34:cd=34:su=0;41:sg=0;46:tw=0;42:ow=33"

# Open man-pages with bat, don't clear screen after quit
export MANPAGER=$(command -v bat)

# Bat config
export BAT_PAGER="less -RF"
export BAT_CONFIG_PATH=$HOME/.config/bat/bat.conf

# Set PAGER
(( ${+PAGER} )) || export PAGER=$( command -v bat || command -v most || command -v less || command -v cat || "" )

# "ps" command - process list default output
export PS_FORMAT="pid,ppid,user,pri,ni,vsz,rss,pcpu,pmem,tty,stat,args"

# REVIEW_BASE points to base branch
# which is compared against when reviewing code
export REVIEW_BASE="master"

# Prefer US English and use UTF-8
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'
