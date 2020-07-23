#!/usr/bin/env zsh


### Globals

alias -g G='| egrep'
alias -g L='| less'
alias -g B='| bat'

### Helpers

alias qq='exit'

### History

alias h=history
alias hsi='history | egrep'

### Edit configuration files

alias evi='nvim ~/.dotfiles/.nvim/init.vim'
alias esh='nvim ~/.dotfiles/.zsh/.zshrc'
alias eenv='nvim ~/.dotfiles/.zsh/.zshenv'
alias eev='nvim ~/.dotfiles/.zsh/variables.zsh'
alias efn='nvim ~/.dotfiles/.zsh/lib/functions.zsh'
alias eal='nvim ~/.dotfiles/.zsh/aliasrc.zsh'

### Directories

alias md=mkdir
alias rd=rmdir

alias d='dirs -v | head -10'
alias ...=../..
alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias dw='cd ~/webdev && tree -dL 1'
alias dwp='cd ~/webdev/partials && tree -dL 1'

# Config directory jump
alias ddot='cd ~/.dotfiles'
alias ddz='cd ~/.dotfiles/.zsh'
alias dlib='cd ~/.dotfiles/.zsh/lib'
alias dvi='cd ~/.dotfiles/.nvim'
alias dcvi='cd ~/.config/nvim'

# List directory contents
alias la='ls -1pA --group-directories-first'
alias ll='ls -lAh'
alias lr='ls -RpA'

# List folder tree
alias trea='tree -a'
alias tred='tree -d'
alias tref='tree -af'
alias treo='tree -o'
alias trel='tree -aL'
alias treff='tree --ignore-case -aP'
alias treffa='tree --ignore-case --match-dirs --prune -aP'

### Package Manager

# apt-get
alias install='sudo apt-get install'
alias remove='sudo apt-get remove'
alias purge='sudo apt-get purge'
# alias update='sudo apt-get update && sudo apt upgrade -y'
# alias autoremove='sudo apt-get autoremove --purge'
# alias clean='sudo apt-get autoclean && sudo apt-get clean'

# rsync copy with progress
alias cpd='rsync -ahP $1 $2'

# npm & yarn
alias y=yarn
alias yolo='rm -rf node_modules/ && rm -f package-lock.json && yarn install'
alias nolo='rm -rf node_modules/ && rm -f package-lock.json && npm install'

### Utilities

alias snapsize='sudo du -h /var/lib/snapd/snaps'

# Get cache size on disk 
alias cachesize='sudo du -sh /var/cache/apt-get'

# Get thumbnails size on disk
alias thumbsize='du -sh ~/.cache/thumbnails'
# Clear thumbnails
alias thumbclean='rm -rf ~/.cache/thumbnails'

# Get log size on disk
alias logsize='journalctl --disk-usage'
# Clear log files older then 7 days
alias logclean='sudo journalctl --vacuum-time=7d'

# Restart shell
alias reload='source ~/.config/zsh/.zshrc'
alias restart='clear && exec -l $SHELL'

# Print path item by line
alias path='echo -e ${PATH//:/\\n}'

# Get IP Adress
alias myip='curl ifconfig.co'
# Get list of all linux-images
alias kernellist='sudo dpkg --list "linux-image*"'
# Get list of all installed ppa's
alias ppalist='egrep -v "^#|^ *$" /etc/apt-get/sources.list /etc/apt-get/sources.list.d/*'


### Git Aliases

alias g=git
alias ga='git add'
alias gaa='git add .'
alias gc='git commit -m'
alias gb='git branch'
alias gcb='git checkout -b'
alias gdb='git branch -d'
alias gcm='git checkout master'
alias gf='git fetch'
alias gp='git push origin $(git_current_branch)'
alias gpl='git pull origin $(git_current_branch)'
alias gm='git merge'
alias gcl='git clone'
alias gcld='git clone --depth 1'
alias gdf='git diff'
alias glog='git log --oneline --decorate --graph'
alias gcf='git config --list'
alias gls='git ls-files'
alias glsg='git ls-files | grep -i'
alias gr='git remote'
alias grv='git remote -v'
alias gra='git remote add'
alias gs='git status'
alias gss='git status -s'


