# Disable XON/XOFF flow control to free up <C-s> and <C-q> shortcuts in terminal
# Do this only for interactive shell
[[ $- == *i* ]] && stty -ixon

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

### Plugins
source /usr/share/zplug/init.zsh

# zplug - plugin manager
zplug "zplug/zplug", hook-build:"zplug --self-manage"

# list of plugins

zplug "zdharma/fast-syntax-highlighting"

zplug "mafredri/zsh-async", from:github, on:"denysdovhan/spaceship-prompt"
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug "zsh-users/zsh-autosuggestions", from:github


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
#zplug load --verbose
zplug load

# User aliases
source $ZSH/aliasrc.zsh

### User configuration files
source $ZSH/lib/z_init.sh

# Load nvim
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


# TODO:  Hook direnv
# direnv is an extension for your shell. 
# It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.
#eval "$(direnv hook zsh)"

