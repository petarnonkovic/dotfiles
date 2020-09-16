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

" =========================================================================

" Basic settings {{{

" Shell zsh
set shell=/usr/bin/zsh

" History size
set history=500

" Hide dirty buffer 
set hidden

" Horizontal split to right
set splitright

" Clipboard settings
" Always use clipboard for all:
" delete, yank, change, put operations
set clipboard+=unnamedplus

" Enable mouse use
if has('mouse')
  " Enable mouse in some modes
  set mouse=nv
  " Set behavior of mouse
  set mousemodel=popup
endif

" Disable creating swap and backup files
set noswapfile
set nobackup nowritebackup

" Persistent undo even after close/reopen file
set undofile

" Disable modeline
set nomodeline
set modelines=0

" File and script encoding settigs
set fileencoding=utf-8
scriptencoding utf-8

" Redraw after exec mappings or any command
set lazyredraw

" Minimum lines to keep above and below cursor on scrolling
set scrolloff=5

" Do not use visual or error bells
set visualbell noerrorbells

" Shows the effects of a command on type
set inccommand=nosplit

" Ask confirm by default
set confirm

"}}}

" =====================================================

" Behavior settings {{{

" Folding
set nofoldenable
set foldlevel=3
set foldmethod=indent

" Formating
set formatoptions=jtcrqn1
set formatoptions+=mM

" Allow virtualedit in V-block mode
set virtualedit=block

" No double space after period
set nojoinspaces

"}}}

" Indentation settings {{{

" Tab size
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set shiftround

"}}}

"{{{ Await time before react

" Time in miliseconds to wait for mapped sequence to complete
set timeoutlen=600

" After given time, Vim will stop hihglighting further matches
" Syntax highlighting vs performance trade-off
set redrawtime=1000

" For CursorHold events
set updatetime=300

"}}}


" =====================================================

" UI Screen {{{

" Line numbering
set number relativenumber

" Change fillchars for folding
set fillchars=fold:\ ,vert:\|

" Use list mode and customized listchars
set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:+

" Window title: 
"   - filename
"   - is-modified indicator
"   - full cwd path
"   - active buffer indicator / load buffer count  
set title
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:h\")})%)%(\ %a%)

" Do not wrap lines
set nowrap

" Break line at predefined characters
set textwidth=100
set linebreak

" Highlight cursor line
set cursorline

" Set ruler at column 100
set colorcolumn=102

" Do not show mode on cmd line
set noshowmode

" Mode in which cursorline text can be concealed
set concealcursor=nc

" Conceal text and highlight with "Conceal" highlight group
set conceallevel=2

" Always show signcolumn
set signcolumn=yes

"}}}

" =====================================================

" Matching & Highlighting {{{

" Additiona brackets to match
set matchpairs+=<:>

" case-insensitive search
" case-sensitive when uppercase is present
set ignorecase smartcase

" Stop when reaching last match, don't start over
set wrapscan

" /g flag default on in search/replace
set gdefault

" Max columns to highlight
set synmaxcol=200

" File search paths
set path=.,**,,,/usr/include,/home/petarr/Projects

"}}}

" =====================================================

" Completion matches menu/list {{{

" List all items and start selecting matches in cmd completion
set wildmode=longest:full

" Ignore filetypes in cmd completion
set wildignore+=*.o,*.obj,*.dll,*.exe,*.swp,*.map
set wildignore+=*.png,*.jpg,*.jpeg,*.gif,*.webp
set wildignore+=*/.git/*,*/.svn/*,*/build/**,**/node_modules/**,**/dist/**
set wildignore+=*.pyc,*/__pycache__/*
set wildignore+=*.DS_Store,*.pdf

" Autocompletion behavior
set complete-=i
set complete+=kspell

" Completion menu options
set completeopt+=noinsert  " Auto select first completion entry
set completeopt+=menuone   " Show menu even if there is only one item
set completeopt+=preview   " Disable preview window

" Do not show messages during auto-completion
set shortmess+=c
" Disable startup message
set shortmess+=I

" Popup menu max items to show
set pumheight=15

" Popup menu transparency
set pumblend=20

"}}}

"}
