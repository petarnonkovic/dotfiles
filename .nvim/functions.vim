" Delete current buffer {{{

function! functions#Delete(...)

    if (exists('a:1'))
        let file=a:1
    elseif ( &ft == 'help' )
        echohl Error
        echo "Cannot delete a help buffer!"
        echohl None
        return -1
    else
        let file=expand('%:p')
    endif

    let status=delete(file)

    if (status == 0)
        echo "Deleted " . file
    else
        echohl WarningMsg
        echo "Failed to delete " . file
        echohl None
    endif

    return status

endfunction

" }}}


" Show Documentation {{{

function! functions#Show_documentation()

  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif

endfunction

"}}}


" Python formater {{{

function! functions#JsonFormat()

    %!python -m json.tool
    %s;^\(\s\+\);\=repeat(' ', len(submatch(0))/2);g

endfunction

"}}}


" Command Line abbrevations {{{

function! functions#SetupCommandAbbrs(from, to)

  exec 'cnoreabbrev <expr> '.a:from
    \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
    \ .'? ("'.a:to.'") : ("'.a:from.'"))'

endfunction

"}}}


" Check BS key press on completion {{{

function! functions#Check_back_space() abort

  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'

endfunction

"}}}


" Current function for statusline {{{

function! functions#CocCurrentFunction()

    return get(b:, 'coc_current_function', '')

endfunction

"}}}


" Create floating window for FZF search {{{

function! functions#CreateCenteredFloatingWindow()

    let width = min([&columns - 4, max([80, &columns - 20])])
    let height = min([&lines - 4, max([20, &lines - 10])])
    " let top = ((&lines - height) / 2) - 1
    let top = 1
    let left = (&columns - width) / 2
    let opts = {'relative': 'editor', 'row': top, 'col': left, 'width': width, 'height': height, 'style': 'minimal'}

    let top = "╭" . repeat("─", width - 2) . "╮"
    let mid = "│" . repeat(" ", width - 2) . "│"
    let bot = "╰" . repeat("─", width - 2) . "╯"
    let lines = [top] + repeat([mid], height - 2) + [bot]
    let s:buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(s:buf, 0, -1, v:true, lines)
    call nvim_open_win(s:buf, v:true, opts)
    set winhl=Normal:Floating
    let opts.row += 1
    let opts.height -= 2
    let opts.col += 2
    let opts.width -= 4
    call nvim_open_win(nvim_create_buf(v:false, v:true), v:true, opts)
    au BufWipeout <buffer> exe 'bw '.s:buf

endfunction

"}}}

" Manage file path {{{

function! functions#Cwd()

  let cwd = getcwd()
  return "e " . cwd

endfunction

function! functions#DeleteTillSlash()

  let cmd = getcmdline()
  let cmd_edited = substitute(cmd, "\\(.*/\\).*", "\\1", "")

  if cmd == cmd_edited
    let cmd_edited = substitute(cmd, "\\(.*/\\).*", "\\1", "")
  endif

  return cmd_edited

endfunction

function! functions#CurrentFileDir()

  return "e " . expand("%:p:h") . "/"

endfunction

" Mappings

cnoremap $c e <C-\>eCurrentFileDir()<CR>
cmap <C-q> <C-\>eDeleteTillSlash()<CR>

" }}}
