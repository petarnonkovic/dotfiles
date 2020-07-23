" Basic Rewrites {{{

" Remap ESC
inoremap jk <ESC>

" activate spell-checking alternatives
nnoremap <LocalLeader>s :set invspell spelllang=en<CR>

" Double space enter visual line mode
nmap <silent> <Leader><Leader> V

" BackSpace act same in {normal, visual}-mode
nnoremap <silent> <BS> a<BS>

" EOF jump and center screen
nnoremap <silent> <CR> Gzz
vnoremap <silent> <CR> G

" Scroll 3 lines instead 1
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Jump back and center screen
nnoremap <silent> <C-o> <C-o>zz

" Repeat command for each selected line in visual mode't
vnoremap <silent> . :normal .<CR>

" }}}


" Grep {{{

" QuickFix Window {{{

" Switch between entries 
nnoremap <Leader>fn :cnext<CR>
nnoremap <Leader>fp :cprevious<CR>
" }}}

" }}} 


" File/Dir control {{{

" Edit ~/.config/nvim/init.vim
nnoremap <Leader>ev :vsplit $MYVIMRC<CR>

" Source ~/.config/nvim/init.vim
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Change CWD locally and print CWD
nnoremap <silent> <Leader>cd :lcd %:p:h<CR>:pwd<CR>

" Save file if has no change
nnoremap <Leader>s :update<CR>

" Save and Quit All files
nnoremap <silent> XX :xall<CR>

" Save All files
nnoremap <Leader>w :wall<CR>

" Quit file if has no change
nnoremap <silent> <Leader>q :q<CR>

" Force quit file
nnoremap <silent> Q :q!<CR>

" Quit all opened files
nnoremap <silent> <C-q> :qa<CR>

" Quick vsplit new file
nnoremap <silent> <Leader>n :vnew<CR>
nnoremap <silent> <Leader>N :vnew<Space>

" Create file under cursor in vsplit
nnoremap <Leader>fv :vsplit <cfile><CR>

" }}}


" Buffers {{{

" Buffers list
nnoremap <silent> <Leader>ls :buffers!<CR>

" Navigate buffers
nnoremap <silent> <Leader>bn :bnext<CR>
nnoremap <silent> <Leader>bn :bprev<CR>

" Kill buffer
nnoremap <silent> <Leader>bd :bd!<CR>

" }}}


" Tabs {{{

" gp instead of gT for previous tab
nnoremap gp :tabprevious<CR>

" Go to previous (last accessed) file
nnoremap gl g<Tab>

" New tab page file under cursor
nnoremap <Leader>gf <C-w>gf

" New tab page edit/create file
nnoremap tn :tabnew<Space>

" First/Last tab focus
nnoremap <silent> tl :tablast<CR>
nnoremap <silent> th :tabfirst<CR>

" Tab focus by order number
nnoremap <silent> <Leader>1 1gt<CR>
nnoremap <silent> <Leader>2 2gt<CR>
nnoremap <silent> <Leader>3 3gt<CR>
nnoremap <silent> <Leader>4 4gt<CR>
nnoremap <silent> <Leader>5 5gt<CR>
nnoremap <silent> <Leader>6 6gt<CR>
nnoremap <silent> <Leader>7 7gt<CR>
nnoremap <silent> <Leader>8 8gt<CR>
nnoremap <silent> <Leader>9 9gt<CR>

" Current tab-terminate
nnoremap <silent> <Leader>tt :tabclose<CR>

" Close all tabs except current
nnoremap <silent> <Leader>to :tabonly<CR>

" }}}


" Edit file {{{

" Continuous visual shifting (does not exit Visual mode),
" `gv` means to reselect previous visual area
xnoremap <silent> < <gv
xnoremap <silent> > >gv

" Ctrl-O to start editing new line
" without splitting the current one
inoremap <C-o> <C-o>o

" Insert blank line below or above current line (do not move cursor)
nnoremap <silent> <expr> <Leader>o 'm`' . v:count1 . 'o<ESC>``'
nnoremap <silent> <expr> <Leader>O 'm`' . v:count1 . 'O<ESC>``'

" Delete line without storing in clipboard
nnoremap <Leader>d "_dd

" Change text whitout storing in register
nnoremap <silent> c "_c
nnoremap <silent> C "_C
nnoremap <silent> cc "_cc

" Join lines and keep cursor in place
nnoremap <silent> J mzJ`z

" }}}


" Aliases for text objects {{{

" around line selection
vnoremap <silent> al :<c-u>normal! $v0<cr>
onoremap <silent> al :<c-u>normal! $v0<cr>

" 8 - operate inside word
" * - operate inside WORD
onoremap 8 iw
onoremap * iW

" 9 - operate around word
" 0 - operate around WORD
onoremap 9 aw
onoremap 0 aW

" q - operate inside quotes (' " `)
" [ - operate inside parentheses ( [ { .
" Same shortcut as used in rhysd/clever-f.vim plugin to match all signs
" t - operate inside tags
" onoremap q iq
" onoremap [ ij
" onoremap t it

" }}}


" Moving in file {{{

" Jump to matching pairs easily in normal mode
nnoremap <silent> <Tab> %

" j/k moves between virtual(wraped) lines
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" Start line jump remap
noremap <silent> ^ g^
noremap <silent> 0 g0

" End line jump, do not include whitespace characters
xnoremap <silent> $ g_

" H/L for Start/End line position
nnoremap H g^
xnoremap H g^
nnoremap L g$
xnoremap L g$

" }}}


" Copy/Paste/Select/Replace {{{

" Prevent replacing paste register on paste over selected text
xnoremap <silent> p "_dp`]
xnoremap <silent> P "_dP`]

" Go to end of copy/pasted text
xnoremap <silent> y y`]
nnoremap <silent> p p`]
nnoremap <silent> P P`[

" vnoremap <silent> p p`]

" Select just pasted text
noremap <silent> gV `[v`]

" Full file selection
nnoremap <silent> <F5> ggVG$<CR>

" Yank from current cursor position to the end of the line
" Like D or C
nnoremap <silent> Y y$

" Substitute file/selected wide
nnoremap <C-f> :%s/\v
vnoremap <C-f> :s/\v

" Replace word under cursor
nnoremap <C-s> :%s/\<<C-r><C-w>\>/
vnoremap <C-s> :s/\<<C-r><C-w>\>/

" nosmartcase when search word under cursor
nnoremap * /\<<C-r>=expand('<cword>')<CR>\><CR>
nnoremap # /\<<C-r>=expand('<cword>')<CR>\><CR>

" Remove highlight from search results
nnoremap <silent> <Leader>l :nohlsearch<CR>

" Center search results
nnoremap <silent> n nzvzz
nnoremap <silent> N Nzvzz
nnoremap <silent> * *zvzz
nnoremap <silent> # #zvzz

" }}}


" Folding {{{

" Toggle fold with zt
nnoremap zt za

" }}}


" Split windows control {{{

" Resize active split with <alt-hjkl>
nnoremap <silent> <M-j> <C-w>-
nnoremap <silent> <M-k> <C-w>+
nnoremap <silent> <M-h> <C-w><
nnoremap <silent> <M-l> <C-w>>

" Move between splits with <ctr-hjkl>
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l

" }}}


" Terminal {{{

" Ctrl-T to start terminal
nnoremap <silent> <C-t> :split term://zsh<CR>

" ESC switch to normal mode
tnoremap <ESC><ESC> <C-\><C-n>

" }}}


" Disable keys {{{

" Disable cmdline window
" Quit instead
nnoremap q: :q<CR>

" Silently ignore space in normal mode
nnoremap <silent> <Space> <Nop>

" Do not use arrows in Normal mode
noremap <silent> <Up>    <Nop>
noremap <silent> <Down>  <Nop>
noremap <silent> <Left>  <Nop>
noremap <silent> <Right> <Nop>
inoremap <silent> <Up>    <Nop>
inoremap <silent> <Down>  <Nop>
inoremap <silent> <Left>  <Nop>
inoremap <silent> <Right> <Nop>

" }}}
