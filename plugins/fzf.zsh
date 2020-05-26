#!/usr/bin/env zsh



FD_OPTIONS="--hidden --follow --color=always --exclude .git --exclude node_modules"


export FZF_DEFAULT_OPTS="--ansi --margin=0,1.2%,0 --no-mouse --height 60% -1 --reverse --border --multi --inline-info --preview='[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-o:accept'"



# Use git-ls-files inside git repo, otherwise fd
export FZF_DEFAULT_COMMAND="fdfind --type f --type l $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fdfind --type d $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Enable fuzzy search key bindings and auto completion
[ -f ~/.local/share/fzf/.fzf ] && source ~/.local/share/fzf/.fzf

# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" --exclude "node_modules" . "$1"
}
