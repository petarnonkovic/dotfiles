" ===========================================================
" Plugins Manager
" ===========================================================

" Plugins with Vim-plug {{{

let g:PLUGIN_HOME=expand( stdpath('data') . '/plugged' )

call plug#begin( g:PLUGIN_HOME )

  " Plug 'mustache/vim-mustache-handlebars'
  " Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }
  " Plug 'editorconfig/editorconfig-vim'
  " Plug 'morhetz/gruvbox'

  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-surround'
  Plug 'honza/vim-snippets'
  Plug 'preservim/nerdcommenter'
  Plug 'sheerun/vim-polyglot'
  Plug 'jiangmiao/auto-pairs'
  Plug 'heavenshell/vim-jsdoc'
  Plug 'itchyny/lightline.vim'
  Plug 'hail2u/vim-css3-syntax'

call plug#end()

" }}}

" ===========================================================
" Plugins settings
" ===========================================================

" TODO: Add mappings for :Explore


" Vim-plug cmdline shortcuts {{{
call functions#SetupCommandAbbrs( 'pi', 'PlugInstall' )
call functions#SetupCommandAbbrs( 'pud', 'PlugUpdate' )
call functions#SetupCommandAbbrs( 'pug', 'PlugUpgrade' )
call functions#SetupCommandAbbrs( 'ps', 'PlugStatus' )
call functions#SetupCommandAbbrs( 'pc', 'PlugClean' )

" }}}

" Lightline {{{

 "    The colorscheme for lightline.vim.
"     Currently, wombat, solarized, powerline, powerlineish,
"     jellybeans, molokai, seoul256, darcula,
"     selenized_dark, selenized_black, selenized_light, selenized_white,
"     Tomorrow, Tomorrow_Night, Tomorrow_Night_Blue,
"     Tomorrow_Night_Bright, Tomorrow_Night_Eighties, PaperColor,
"     landscape, one, materia, material, OldHope, nord, deus,
"     simpleblack, srcery_drk, ayu_mirage, ayu_light, ayu_dark and
"     16color are available.
"
" Statusline theme
let g:lightline = {
\ 'colorscheme': 'material',
\ 'active': {
\   'left': [
\     [ 'mode', 'paste' ],
\     ['cocstatus', 'readonly', 'filename','linter_warnings', 'linter_errors', 'modified']
\   ],
\   'right': [
\     [ 'lineinfo' ], [ 'percent' ],
\     [ 'currentfunction', 'fileencoding', 'filetype' ]
\   ]
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status',
\   'currentfunction': 'functions#CocCurrentFunction'
\ },
\ 'component_expand': {},
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ 'tabline': {
\   'left': [ [ 'tabs' ] ],
\   'right': [ [ 'close' ] ]
\ },
\ 'tab': {
\   'active': [ 'tabnum', 'filename', 'modified' ],
\   'inactive': [ 'tabnum', 'filename', 'modified' ]
\ },
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' }
\ }

" }}}

" FZF-Vim settings {{{

" Hide statusline|ruler|title if finder is open
augroup fzf_hide_statusline
  autocmd!
  autocmd! FileType fzf
  autocmd FileType fzf
    \ set laststatus=0 noruler notitle showtabline=0
    \ | autocmd BufLeave <buffer> set laststatus=2 ruler title showtabline=1
augroup END

" Open fuzzy search
nnoremap <C-P> :FZF<CR>

" Search files in load buffers
nnoremap <Leader>bs :Buffers<CR>

" Search v:oldfiles and open buffers
nnoremap <Leader>h :History<CR>

" Search command history
nnoremap <Leader>H :History:<CR>

" Search markers
nnoremap <Leader>m :Marks<CR>

" Search tags in current buffer
nnoremap <Leader>bt :BTags<CR>

" Search tags project wide
nnoremap <Leader>T :Tags<CR>

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <C-x><C-k> <plug>(fzf-complete-word)
imap <C-x><C-f> <plug>(fzf-complete-path)
imap <C-x><C-j> <plug>(fzf-complete-file-ag)
imap <C-x><C-l> <plug>(fzf-complete-line)

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-e': 'edit',
\ }

" floating fzf window with borders
let g:fzf_layout = { 'window': 'call functions#CreateCenteredFloatingWindow()' }

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
" let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-e'
" Customize fzf colors to match your color scheme
let g:fzf_colors = {
\ 'fg':      [ 'fg', 'Normal' ],
\ 'bg':      [ 'bg', 'Normal' ],
\ 'hl':      [ 'fg', 'Comment' ],
\ 'fg+':     [ 'fg', 'CursorLine', 'CursorColumn', 'Normal' ],
\ 'bg+':     [ 'bg', 'CursorLine', 'CursorColumn' ],
\ 'hl+':     [ 'fg', 'Statement' ],
\ 'info':    [ 'fg', 'PreProc' ],
\ 'border':  [ 'fg', 'Ignore' ],
\ 'prompt':  [ 'fg', 'Conditional' ],
\ 'pointer': [ 'fg', 'Exception' ],
\ 'marker':  [ 'fg', 'Keyword' ],
\ 'spinner': [ 'fg', 'Label' ],
\ 'header':  [ 'fg', 'Comment' ]
\ }

" }}}

" JsDoc {{{
nnoremap <silent> <Leader>jd <Plug>( jsdoc )
" }}}

" NerdCommenter settings {{{

" Remap Toggle Comment
nmap <silent> <Leader>cp <Plug>NERDCommenterToggle
vmap <silent> <Leader>cp <Plug>NERDCommenterToggle

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

" Use one space after # comment character in python
let g:NERDAltDelims_python = 1

" }}}


" ============================================================
" Coc Settings
" ============================================================

" nodejs path
let g:coc_node_path = '/home/petarr/.nvm/versions/node/v14.4.0/bin/node'

" Coc extensions list
let g:coc_global_extensions = [
  \ 'coc-emmet',
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-phpls',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tailwindcss',
  \ 'coc-vetur',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-prettier',
\]

" Coc filetype mappings
let g:coc_filetype_map = {
  \ 'css': 'scss',
\ }

" Use <Tab> for trigger completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ functions#check_back_space() ? "\<Tab>" :
  \ coc#refresh()

let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use <c-space> to trigger completion.
inoremap <silent><expr> <C-Space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

augroup cocsettings
  autocmd!

  "Close preview window when completion is done.
  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif

  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')

  " Highlight for comments in json files
  autocmd FileType json syntax match Comment +\/\/.\+$+

  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap for rename current word
nmap <F3> <Plug>(coc-rename)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <Leader>a  <Plug>(coc-codeaction-selected)
nmap <Leader>a  <Plug>(coc-codeaction-selected)

" Create mappings for function text object, requires document symbols feature of languageserver.
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Open Coc configuration file with :C
call functions#SetupCommandAbbrs('C', 'CocConfig')

" Add :Fold command to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)<CR>

" Use ;k to show documentation in preview window
nnoremap <silent> K :call functions#Show_documentation()<CR>

" Use ;l to show available Coc commands
nnoremap <silent> <LocalLeader>c :<C-u>CocList commands<CR>

" Use ;z to show extensions list
nnoremap <silent> <LocalLeader>x :<C-u>CocList extensions<CR>

" Restart tsserver or pyserver?
nnoremap <LocalLeader>r :<C-u>CocRestart<CR>

" Remap for do codeAction of current line
nmap <LocalLeader>a  <Plug>(coc-codeaction)

" Fix autofix problem of current line
nnoremap <LocalLeader>f  <Plug>(coc-fix-current)

"}

" Colorscheme {{{

if has('termguicolors')
  set termguicolors
endif

if !has('gui_running')
  set t_Co=256
endif

set background=dark

" Theme
colorscheme onehalfdark

hi Quote ctermbg=109 guifg=#83a598

}}}
