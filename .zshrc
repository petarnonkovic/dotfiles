# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Disable XON/XOFF flow control to free up <C-s> and <C-q> shortcuts in terminal
# Do this only for interactive shell
[[ $- == *i* ]] && stty -ixon


### Plugins
source /usr/share/zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'


zplug "zsh-users/zsh-autosuggestions"

zplug "plugins/colored-man-pages", from:oh-my-zsh

zplug "denisidoro/navi", from:github

zplug "zdharma/fast-syntax-highlighting"

zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
# (If the defer tag is given 2 or above, run after compinit command)
#zplug "zsh-users/zsh-syntax-highlighting", defer:2


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


### Plugins Options
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)



### Load config, widgets
source $ZSH/load_config.sh

# Load fzf; TODO: add to zplug
source $ZDOTDIR/plugins/fzf.zsh

# Load all of the custom alias
[ -f "$ZSH/.aliasrc" ] && source $ZSH/.aliasrc


# Hook direnv
# direnv is an extension for your shell. 
# It augments existing shells with a new feature that can load and unload environment variables depending on the current directory.
#eval "$(direnv hook zsh)"


