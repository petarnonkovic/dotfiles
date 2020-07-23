" Builtin variables {{{

" Path to python3 interpreter
if executable('python')
  let g:python3_host_prog = exepath('python')
else
  echoerr 'Python executable not found.'
endif

" Disable Python2 support
let g:loaded_python_provider = 0

" Custom Leader mapping
let mapleader="\<Space>"

" Custom LocalLeader mapping
let maplocalleader=";"

" Normally, Vim messes with iskeyword when you open a shell file. This can
" leak out, polluting other file types even after a 'set ft=' change. This
" variable prevents the iskeyword change so it can't hurt anyone.
let g:sh_noisk=1

"}}}


" Disable plugin load {{{

" Do not load tohtml.vim
let g:loaded_2html_plugin = 1

" Do not load zipPlugin.vim, gzip.vim, tarPlugin.vim
let g:loaded_zipPlugin = 1
let g:loaded_zip = 1
let loaded_gzip = 1
let g:loaded_tarPlugin = 1
let g:loaded_tar = 1

" Do not use builtin matchit.vim and matchparen.vim
"let loaded_matchit = 1
"let g:loaded_matchparen = 1

" Do not load netrw by default
" let g:loaded_netrw = 1
"let g:loaded_netrwPlugin = 1

"}}}
