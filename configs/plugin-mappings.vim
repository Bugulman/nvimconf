"NERDTree
nnoremap <silent><C-n> :NERDTreeToggle<Enter>
nnoremap <silent><C-j> :NERDTreeFind<Enter>
"ALE
nnoremap <silent> [a :ALEPreviousWrap<Enter>
nnoremap <silent> ]a :ALENextWrap<Enter>
"GIT
nnoremap <silent> <Leader>gg :Git<Enter>
nnoremap <silent> <Leader>gc :Commits<Enter>
nnoremap <silent> <Leader>gb :Git blame<Enter>
nnoremap <silent> <Leader>gr :Gread<Enter>
nnoremap <silent> <Leader>gl :Git log<Enter>
"FZF
" nnoremap <silent> <Leader>l :Buffers<Enter>
" nnoremap <C-p> :GFiles <Enter>
"gundo
nnoremap <silent> <Leader>i :GundoToggle<Enter>
"easymotion
map <Leader>f <Plug>(easymotion-bd-f)
"COC
"main commands
nmap <silent>gd <Plug>(coc-definition)
nmap <Leader>cr <Plug>(coc-rename)
xmap <Leader>ca <Plug>(coc-codeaction-selected)
nmap <Leader>cf <Plug>(coc-format)
nmap <Leader>cc :CocCommand editor.action.pickColor<Enter>
"ShowDocumentation in functions.vim
nnoremap <silent>K :call ShowDocumentation()<Enter>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"scroll windows
nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<Enter>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<Enter>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"request window/popup
inoremap <silent><expr> <C-Space> coc#refresh()
"expand snippets
imap <C-l> <Plug>(coc-snippets-expand)
"select from menu by Enter
inoremap <silent><expr> <Enter> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<Enter>\<C-r>=coc#on_enter()\<Enter>"
" EasyAlign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
" TagbarToggle
nmap <leader>w :Vista<CR>
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>of <cmd>Telescope oldfiles<cr>
map <leader>g :Goyo<CR>
nmap <leader>h :RainbowParentheses!!<CR>
nmap <leader>j :set filetype=journal<CR>
nmap <leader>p :set filetype=pov<CR>
nmap <leader>k :ColorToggle<CR>
nmap <leader>l :Limelight!!<CR>
xmap <leader>l :Limelight!!<CR>
" for work with IPython
nmap <silent> <leader>jqt :RunQtConsole<Enter>
nmap <silent> <leader>jk :IPython<Space>--existing<Space>--no-window<Enter>
nmap <silent> <leader>jc <Plug>(IPy-RunCell)
nmap <silent> <C-S> <Plug>(IPy-Run)
nmap <silent> <leader>ja <Plug>(IPy-RunAll)

