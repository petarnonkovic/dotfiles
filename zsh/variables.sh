# add a function path
fpath=($ZSH/functions $fpath)

## Set editor variable
export EDITOR=$(which nvim)
export VISUAL=$(which nvim)

## History file configuration
export HISTFILE=$ZSH_CACHE_DIR/.zsh_history
export HISTSIZE=50000
export SAVEHIST=10000

# Get out the SHORT hostname
#SHORT_HOST=${HOST/.*/}

# Save the location of the current completion dump file.
#ZSH_COMPDUMP="${ZSH_CACHE_DIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"

## enable LS colored output
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacxx
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34:cd=34:su=0;41:sg=0;46:tw=0;42:ow=33"

## Bat configuration variables
export BAT_PAGER="less -RF"
export BAT_CONFIG_PATH=$HOME/.config/bat/bat.conf

## Set PAGER variable
(( ${+PAGER} )) || export PAGER=$( command -v bat || command -v most || command -v less || command -v cat || "" )

## "ps" process list default output
export PS_FORMAT="pid,ppid,user,pri,ni,vsz,rss,pcpu,pmem,tty,stat,args"

# REVIEW_BASE points to base branch
# which is compared against when reviewing code
export REVIEW_BASE="master"
