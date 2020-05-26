# Set path to user /bin
export PATH=$HOME/bin:$HOME/.local/bin:$PATH

# Path to user zsh configuration files
export ZSH=$HOME/.dotfiles/zsh

# Directory for cache storage
export ZSH_CACHE_DIR=$HOME/.cache/zsh

# Import variables
[ -f "$ZSH/variables.sh" ] && source $ZSH/variables.sh


