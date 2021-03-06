"gundo
" let python3_host_prog = 'C:/Users/reg16/soft/python/python.exe'
let g:virtualenv_directory = 'C:/Users/reg16/Envs'
 
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
let python3_host_prog ='c:/Python310/python.EXE'
"gitgutter
let g:gitgutter_max_signs = 9999
let g:gitgutter_sign_added = '┃'
let g:gitgutter_sign_removed = '┃'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_modified_removed = '∘'
let g:gitgutter_sign_removed_first_line = '↑'
let g:gitgutter_sign_removed_above_and_below = '‡'
let g:gitgutter_preview_win_floating = 1
"Ack use rg
if executable('rg')
    let g:ackprg = 'rg --vimgrep'
endif
"FZF
"let g:fzf_preview_window = ''
"ALE
let g:ale_enabled = 0
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:ale_linters = {
            \   'jsx': ['eslint'],
            \   'javascript': ['eslint']
            \}
"highlight yank
let g:highlightedyank_highlight_duration = 300
"Emmet
let g:user_emmet_leader_key = '<C-z>'
"NERDTreeGitPlugin
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'m',
                \ 'Staged'    :'s',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'r',
                \ 'Unmerged'  :'u',
                \ 'Deleted'   :'d',
                \ 'Dirty'     :'~',
                \ 'Ignored'   :'i',
                \ 'Clean'     :'c',
                \ 'Unknown'   :'-',
                \ }
" Limelight

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'gray'
" SnipMate settings
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/vim-snippets/UltiSnips']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" commentary for run code blocks in IPython
let g:ipy_celldef = '^##' " regex for cell start and end
" size for large files
let g:LargeFile = 50
" Vista settings
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

