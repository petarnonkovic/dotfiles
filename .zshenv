# Set path to user /bin
export PATH=$HOME/bin:$PATH

# Path to user zsh configuration files
export ZSH=$HOME/.dotconfig/zsh

# Directory for cache storage
export ZSH_CACHE_DIR=$HOME/.dotconfig/zsh/cache

# Import variables
[ -f "$ZSH/.variablesrc" ] && source $ZSH/.variablesrc


