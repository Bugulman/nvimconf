autocmd FileType go setlocal noexpandtab
autocmd FileType ruby call UseSpacesTwo()
autocmd WinEnter term://* startinsert
" Startify + NERDTree on start when no file is specified
autocmd VimEnter *
    \   if !argc()
    \ |   Startify
    \ |   NERDTree
    \ |   wincmd w
    \ | endif

autocmd FileType pov setlocal commentstring=--\ %s

command! -nargs=0 RunQtConsole call jobstart("jupyter qtconsole --JupyterWidget.include_other_output=True")

