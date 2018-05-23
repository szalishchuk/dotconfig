" Enable automatic indentation
filetype plugin indent on
" Enable syntax highlighting
syntax on
" Show line number by default
set number

" Open Ranger file explorer from vim
function RangerExplorer()
    exec "silent !ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
    if filereadable('/tmp/vim_ranger_current_file')
        exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
        call system('rm /tmp/vim_ranger_current_file')
    endif
    redraw!
endfun
map <Leader><Leader> :call RangerExplorer()<CR>
