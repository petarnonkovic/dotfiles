" NVIM Main Configuration File {{{

" Config files & root dir
let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
  \ 'variables.vim',
  \ 'options.vim',
  \ 'functions.vim',
  \ 'autocommands.vim',
  \ 'mappings.vim',
  \ 'plugins.vim',
  \ 'ui.vim'
\]

" Load config files
for config_file in g:config_file_list
  execute 'source ' . g:nvim_config_root . '/' . config_file
endfor

"}}}
