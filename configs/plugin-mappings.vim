"NERDTree
nnoremap <silent><C-n> :NvimTreeToggle<Enter>
nnoremap <silent><C-j> :NvimTreeFindFile<Enter>
"GIT
nnoremap <silent> <Leader>gg :Git<Enter>
nnoremap <silent> <Leader>gc :Commits<Enter>
nnoremap <silent> <Leader>gb :Git blame<Enter>
nnoremap <silent> <Leader>gr :Gread<Enter>
nnoremap <silent> <Leader>gl :Git log<Enter>
"gundo
nnoremap <silent> <Leader>i :GundoToggle<Enter>
"easymotion
map <Leader>f <Plug>(easymotion-bd-f)
"COC
"main commands
"nmap <silent>gd <Plug>(coc-definition)
"nmap <Leader>cr <Plug>(coc-rename)
"xmap <Leader>ca <Plug>(coc-codeaction-selected)
"nmap <Leader>cf <Plug>(coc-format)
"nmap <Leader>cc :CocCommand editor.action.pickColor<Enter>
""ShowDocumentation in functions.vim
"nnoremap <silent>K :call ShowDocumentation()<Enter>
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)
""scroll windows
"nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<Enter>" : "\<Right>"
"inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<Enter>" : "\<Left>"
"vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
""request window/popup
"inoremap <silent><expr> <C-Space> coc#refresh()
""expand snippets
"imap <C-l> <Plug>(coc-snippets-expand)
""select from menu by Enter
"inoremap <silent><expr> <Enter> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<Enter>\<C-r>=coc#on_enter()\<Enter>"
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
" telekasten
nnoremap <leader>zf :lua require('telekasten').find_notes()<CR>
nnoremap <leader>zd :lua require('telekasten').find_daily_notes()<CR>
nnoremap <leader>zg :lua require('telekasten').search_notes()<CR>
nnoremap <leader>zz :lua require('telekasten').follow_link()<CR>
nnoremap <leader>zT :lua require('telekasten').goto_today()<CR>
nnoremap <leader>zW :lua require('telekasten').goto_thisweek()<CR>
nnoremap <leader>zw :lua require('telekasten').find_weekly_notes()<CR>
nnoremap <leader>zn :lua require('telekasten').new_note()<CR>
nnoremap <leader>zN :lua require('telekasten').new_templated_note()<CR>
nnoremap <leader>zy :lua require('telekasten').yank_notelink()<CR>
nnoremap <leader>zc :lua require('telekasten').show_calendar()<CR>
nnoremap <leader>zC :CalendarT<CR>
nnoremap <leader>zi :lua require('telekasten').paste_img_and_link()<CR>
nnoremap <leader>zt :lua require('telekasten').toggle_todo()<CR>
nnoremap <leader>zb :lua require('telekasten').show_backlinks()<CR>
nnoremap <leader>zF :lua require('telekasten').find_friends()<CR>
nnoremap <leader>zI :lua require('telekasten').insert_img_link({ i=true })<CR>
nnoremap <leader>zp :lua require('telekasten').preview_img()<CR>
nnoremap <leader>zm :lua require('telekasten').browse_media()<CR>
nnoremap <leader>za :lua require('telekasten').show_tags()<CR>
nnoremap <leader># :lua require('telekasten').show_tags()<CR>
nnoremap <leader>zr :lua require('telekasten').rename_note()<CR>

" on hesitation, bring up the panel
nnoremap <leader>z :lua require('telekasten').panel()<CR>

" we could define [[ in **insert mode** to call insert link
" inoremap [[ <cmd>:lua require('telekasten').insert_link()<CR>
" alternatively: leader [
inoremap <leader>[ <cmd>:lua require('telekasten').insert_link({ i=true })<CR>
inoremap <leader>zt <cmd>:lua require('telekasten').toggle_todo({ i=true })<CR>
inoremap <leader># <cmd>lua require('telekasten').show_tags({i = true})<cr>

" ----- the following are for syntax-coloring [[links]] and ==highlighted text==
" ----- (see the section about coloring in README.md)

" for gruvbox
hi tklink ctermfg=72 guifg=#689d6a cterm=bold,underline gui=bold,underline
hi tkBrackets ctermfg=gray guifg=gray

" real yellow
hi tkHighlight ctermbg=yellow ctermfg=darkred cterm=bold guibg=yellow guifg=darkred gui=bold
" gruvbox
"hi tkHighlight ctermbg=214 ctermfg=124 cterm=bold guibg=#fabd2f guifg=#9d0006 gui=bold

hi link CalNavi CalRuler
hi tkTagSep ctermfg=gray guifg=gray
hi tkTag ctermfg=175 guifg=#d3869B
