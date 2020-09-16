" ============================================================
" Custom Commands
" ============================================================


" Format JSON file {{{

command! FormatJson :call functions#JsonFormat()

" }}}

" Copy file basename only, file path, dirname {{{

command! -nargs=0 CopyFileName let @+ = expand("%:t") | echo 'Copied to clipboard: ' . @+
command! -nargs=0 CopyFilePath let @+ = expand("%:p:~") | echo 'Copied to clipboard: ' . @+
command! -nargs=0 CopyFileDir let @+ = expand("%:p:~:h") | echo 'Copied to clipboard: ' . @+

" }}}




" ============================================================
" Autocommands
" ============================================================


" Set ColorScheme {{{

augroup lightline_onchange_update
  autocmd!
  
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
augroup END

" }}}

" Syntax Highlighting {{{

augroup syn_highlight
  autocmd!

  " More accurate syntax highlighting? (see `:h syn-sync`)
  autocmd BufEnter * :syntax sync fromstart
augroup END

" }}}


" File control on write/edit {{{

augroup file_control
  autocmd!

  " Return to last edit position when opening a file
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ | execute "normal! g`\"zvzz"
    \ | endif

  " Automatically reload the file if it is changed outside of Nvim, see
  autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
    \ if mode() == 'n' && getcmdwintype() == '' | checktime | endif

  " Echo msg when buffer is reloaded
  autocmd FileChangedShellPost * echohl WarningMsg
    \ | echo "File changed on disk. Buffer reloaded!" | echohl None

  " Automatically write all files on focus lost
  autocmd FocusLost * silent! wa
augroup END

" }}}


" Python FileType settings {{{

augroup filetype_python
  autocmd!

  autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4 
augroup END

"}}}

" FileType Resets {{{

augroup filetype_resets
  autocmd!

  " Markdown files tweak
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

  " TODO: check is highlighting OK
  " Bash files use zshell syntax highlighting
  autocmd BufNewFile,BufRead *.sh setlocal filetype=zsh
augroup END
"}}}

" Vim FileType settings {{{

augroup filetype_vim
  autocmd!

  " Fold in vim files between {{{ and }}}
  autocmd FileType vim setlocal foldmethod=marker 
augroup END

" }}}


" Template bindings {{{

augroup templates
  autocmd!

  autocmd BufNewFile index.html 0rG14 ~/.config/nvim/templates/index.html
  autocmd BufNewFile *-operator.vim 0r ~/.config/nvim/templates/operator.vim
  autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/shell_script.sh


  autocmd BufNewFile *.scss 0r ~/.config/nvim/templates/skeleton.scss
  autocmd BufNewFile *.css 0r ~/.config/nvim/templates/skeleton.scss
  autocmd BufNewFile *.rs 0r ~/.config/nvim/templates/skeleton.rs
  autocmd BufNewFile LICENCE 0r ~/.config/nvim/templates/skeleton.LICENCE
  autocmd BufNewFile .gitignore 0r ~/.config/nvim/templates/skeleton.gitignore
  autocmd BufNewFile .stylelintrc.json 0r ~/.config/nvim/templates/skeleton.stylelintrc
  autocmd BufNewFile .eslintrc.json 0r ~/.config/nvim/templates/skeleton.eslintrc
  autocmd BufNewFile .prettierrc.json 0r ~/.config/nvim/templates/skeleton.prettierrc
augroup END

"}}}


" CmdLine settings {{{

augroup cmdline_settings
  autocmd!

  " IgnoreCase in cmdline
  autocmd CmdLineEnter : setlocal nosmartcase
  autocmd CmdLineLeave : setlocal smartcase
augroup END

" }}}

" Terminal {{{

augroup terminal_settings
  autocmd!

  " Do not show numbers and title for terminal in nvim
  autocmd TermOpen * setlocal nonumber norelativenumber notitle

  " Start terminal in insert mode
  autocmd TermOpen * startinsert
augroup END

"}}}
