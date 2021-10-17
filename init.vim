"    .o oOOOOOOOo                                            0OOOo
"    Ob.OOOOOOOo  OOOo.      oOOo.                      .adOOOOOOO
"    OboO000000000000.OOo. .oOOOOOo.    OOOo.oOOOOOo..0000000000OO
"    OOP.oOOOOOOOOOOO 0POOOOOOOOOOOo.   `0OOOOOOOOOP,OOOOOOOOOOOB'
"    `O'OOOO'     `OOOOo"OOOOOOOOOOO` .adOOOOOOOOO"oOOO'    `OOOOo
"    .OOOO'            `OOOOOOOOOOOOOOOOOOOOOOOOOO'            `OO
"    OOOOO                 '"OOOOOOOOOOOOOOOO"`                oOO
"   oOOOOOba.                .adOOOOOOOOOOba               .adOOOOo.
"  oOOOOOOOOOOOOOba.    .adOOOOOOOOOO@^OOOOOOOba.     .adOOOOOOOOOOOO
"  OOOOOOOOOOOOOOOOO.OOOOOOOOOOOOOO"`  '"OOOOOOOOOOOOO.OOOOOOOOOOOOOO
"    :            .oO%OOOOOOOOOOo.OOOOOO.oOOOOOOOOOOOO?         .
"    Y           'OOOOOOOOOOOOOO: .oOOo. :OOOOOOOOOOO?'         :`
"    .            oOOP"%OOOOOOOOoOOOOOOO?oOOOOO?OOOO"OOo
"                 '%o  OOOO"%OOOO%"%OOOOO"OOOOOO"OOO':
"                      `$"  `OOOO' `O"Y ' `OOOO'  o             .
"    .                  .     OP"          : o     .
"


" << STARTERS >>

filetype indent plugin on
set encoding=utf-8
scriptencoding utf-8

if !exists('g:syntax_on')
  syntax enable
endif

if has('termguicolors')
    set termguicolors
endif

let g:mapleader = ','

"let g:mapleader = "\<Space>"
set cursorline          " show cursorline
set colorcolumn=80
"


" << PLUGINS >>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0rp/ale'                                                     " Async Linting
Plug 'tpope/vim-commentary'                   " Comment stuff out
Plug 'Raimondi/delimitMate'                                         " Automatic delimiters
Plug 'tpope/vim-surround'                                           " Operations around surrounding
Plug 'wellle/targets.vim'                                           " Additional text objects
Plug 'matze/vim-move'                                               " Easily move lines
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/nerdtree'                                          " File tree
"------------------=== GIt ===----------------------
Plug 'airblade/vim-gitgutter'                                       " Track git changes
Plug 'tpope/vim-fugitive'
Plug 'hkupty/iron.nvim', { 'do': ':UpdateRemotePlugs' }           " Repls for various languages
Plug 'Yggdroot/indentline'                                          " Visual indent lines
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/unite.vim'                       " Navigation between buffers and files
Plug 'easymotion/vim-easymotion'

"------------------=== Other ===----------------------
Plug 'vim-airline/vim-airline'                " Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline-themes'         " Themes for vim-airline
Plug 'rosenfeld/conque-term'                  " Consoles as buffers
Plug 'jiangmiao/auto-pairs'

"--------------=== Snippets support ===---------------
Plug 'SirVer/ultisnips'                    " Snippets manager
Plug 'honza/vim-snippets'                     " Snippets repo



" NCM2
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-jedi'                           " Python
Plug 'ncm2/ncm2-racer'                          " Rust
Plug 'ncm2/ncm2-vim'

" LSP
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" enable ncm2 for all buffers
augroup NCM
    autocmd!
    autocmd BufEnter * call ncm2#enable_for_buffer()
augroup END

" enable popupopen
set completeopt=noinsert,menuone,noselect

" --- Python ---
Plug 'davidhalter/jedi-vim'                   " Awesome Python autocompletion with VIM
Plug 'jmcantrell/vim-virtualenv'              " Virtualenv support in VIM
Plug 'vimwiki/vimwiki'
Plug 'tell-k/vim-autopep8'

" Language Support
Plug 'Shougo/neco-vim', { 'for': 'vim' }
Plug 'plasticboy/vim-markdown'
Plug 'vim-python/python-syntax', { 'for': 'python' }
Plug 'ambv/black'
" Plug 'gaalcaras/ncm-R'                                              " R auto-completion

" colorschemes
Plug 'kadekillary/subtle_solo'

call plug#end()
"

" << COLORSCHEMES >>
set background=dark

colorscheme subtle_dark
"

" << STATUSLINE >>

set laststatus=2
set statusline=
set statusline+=\ %F
set statusline+=\ %m
"

" << NETRW >>

let g:netrw_liststyle = 3                                        " Tree style
let g:netrw_banner = 0                                           " No banner
let g:netrw_browse_split = 1
let g:netrw_winsize = 20
let g:netrw_altv = 1
"


" << INDENT LINE >>

let g:indentLine_char = '¦'
" subtle_light
" let g:indentLine_color_gui = '#eee8d5'
" subtle_dark
let g:indentLine_color_gui = '#073642'
" subtle_light - cterm
" let g:indentLine_color_term = 7
"

" << IRON.VIM >>

nnoremap <leader>ir :IronRepl<CR>

let g:iron_repl_open_cmd = 'vsplit'
let g:iron_map_defaults = 0

nmap + <S-v><Plug>(iron-send-motion)
vmap + <Plug>(iron-send-motion)
nmap rr <Plug>(iron-repeat-cmd)
"

" << PYTHON >>

augroup PythonFMT
    autocmd!
    autocmd BufWritePre *.py execute ':Black'
augroup END

 let g:python_host_prog = 'c:/Users/reg16/soft/python36/python.exe'
 let g:python3_host_prog = 'c:/Users/reg16/soft/python36/python.exe'

" vim-python/python-syntax
let g:python_highlight_builtins = 1
let g:python_highlight_builtin_objs = 1
let g:python_highlight_builtin_funcs = 1
let g:python_highlight_builtin_funcs_kwarg = 1
let g:python_highlight_exceptions = 1
let g:python_highlight_string_formatting = 1
let g:python_highlight_string_format = 1
let g:python_highlight_string_templates = 1
let g:python_highlight_indent_errors = 1
let g:python_highlight_space_errors = 1
let g:python_highlight_doctests = 1
let g:python_highlight_class_vars = 1
let g:python_highlight_operators = 1
let g:python_highlight_file_headers_as_comments = 1


" pymode
let g:pymode_python='python3'
let g:pymode_paths = ['c:/Users/reg16/soft/python36']
let g:pymode_trim_whitespaces = 1
let g:pymode_indent = 1                     " PEP-8 compatible indent
let g:pymode_options_colorcolumn = 0
let g:pymode_lint = 0
let g:pymode_lint_on_write = 0
let g:pymode_rope = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_virtualenv = 1
"


" << NERDTREE >>

" let g:NerdTreeCascadeSingleChildDir = 0
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeWinPos = 'left'
let g:NERDTreeShowBookmarks = 1
map <leader>n :NERDTreeToggle<CR>
"


" << FILETYPE >>

augroup FileOptions
  autocmd!
  " indentation
  " (for comments moving to BOL): https://stackoverflow.com/questions/2063175/comments-go-to-start-of-line-in-the-insert-mode-in-vim
  autocmd Filetype python setlocal sts=4 sw=4 wrap
  " autocmd Filetype r setlocal ts=2 sw=2 sts=2 expandtab
  autocmd Filetype r setlocal ts=2 sw=2
  autocmd BufRead,BufNewFile *.md set wrap
  autocmd Filetype javascript setlocal ts=2 sw=2 sts=2 syntax=javascript
  " https://calebthompson.io/crontab-and-vim-sitting-in-a-tree
  autocmd Filetype crontab setlocal nobackup nowritebackup
augroup END
"


" << ALE >>

let g:ale_enabled = 1
let g:ale_sign_error = '✖︎'
highlight ALEErrorSign guifg=red ctermfg=red
let g:ale_sign_warning = '✔︎'
highlight ALEWarningSign guifg=grey ctermfg=grey
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:move_key_modifier = 'N'
let g:ale_lint_on_insert_leave = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
" let g:ale_sign_column_always = 1                " ale enabled
"


" << FOLDING >>

augroup Folding
  autocmd!
  autocmd BufRead * setlocal foldmethod=marker    " using   fold method
  autocmd BufRead * normal zM
augroup END
"


" << BASICS >>

if exists('&inccommand')
    set inccommand=split " (neovim) specific, live substitutin preview
endif

" Keep the bottom clean / clear
set noruler             " turn off line, column numbers
set noshowmode          " don't show current mode
set noshowcmd           " don't show command

" Always go right
set splitright

set nowrap              " don't wrap lines
set t_Co=256
set history=100         " lines of history VIM remembers
set guicursor=a:blinkon0      " disable cursor blink
set autochdir           " change working directory to current file
set shortmess=a         " get ride of annoying Enter/command prompt
set cmdheight=1         " height of command bar
set smarttab
set tabstop=4           " tab is four spaces
set softtabstop=4       " tab removed like spaces
set shiftwidth=4        "  number of spaces for autoindenting
set expandtab           " spaces instead of tab characters
set shiftround
set autoindent
set autochdir           " change current dir to file in viewed buffer
set scrolloff=5         " lines after/before cursor on scroll
set breakindent         " long lines will wrap with indentation
set showbreak=\\\\\     " wrap lines with indentation
set backspace=indent,eol,start " allow backspacing in insert mode
set infercase           " smarter completions that will be case aware
set smartcase           " ignore case if search pattern all lowercase
set autowrite           " save on buffer switch
set showmatch           " highlight matching [{()}]
set incsearch           " search characters as enetered
set hlsearch            " highlight matches
set foldenable          " enable folding
set mouse=a             " enable mouse
set hidden              " buffers exist without windows
set number              " show line number
set relativenumber      " show relative line number set nobackup            " take care of backup files
set nobackup
set nowritebackup         " no backup files
set noswapfile          " no swap files
set lazyredraw          " redraw onlw when needed
" set fillchars+=vert:\   " get rid of vert split '|' character
" set smartindent       " like autoindent, but smarter about C -> deprecated
"


" << TEMPLATES >>

augroup FileTemplates
    autocmd!
    autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/sh.skeleton
    autocmd BufNewFile *.py 0r ~/.config/nvim/templates/py.skeleton
augroup END
"



" << KEY MAPPINGS >>

" markdown - no conceal
let g:vim_markdown_conceal = 0

" Vim Move <CTRL> binding
let g:move_key_modifier = 'C'

" <TAB> to select from popup menu
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Auto-insert shebangs
inoreabbrev <expr> #!! "#!/usr/bin/env" . (empty(&filetype) ? '' : ' '.&filetype)

" quick subtitutions
nnoremap <leader>s :%s/

" Echo path current directory
" nnoremap <silent> <F2> :lchdir %:p:h<CR>:pwd<CR>

" Remove search highlighting
nnoremap <silent> <BS> :nohlsearch<CR>

" Dumb - just use 0
" nnoremap H ^

" Quote words under cursor
nnoremap <leader>" viW<esc>a"<esc>gvo<esc>i"<esc>gvo<esc>3l
nnoremap <leader>' viW<esc>a'<esc>gvo<esc>i'<esc>gvo<esc>3l

" <Leader>T = Delete all Trailing space in file
nnoremap <Leader>t :%s/\s\+$//<CR>:let @/=''<CR>:nohlsearch<CR>

" fast saves
nnoremap <leader>w :w!<CR>

" exit quickly
nnoremap <leader>q :q!<CR>

" escaping various modes
if has ('nvim')
    " get out of terminal with same
    " window movement key bindings
    tnoremap jk		<C-\><C-n><CR>
    tnoremap <C-[>  <C-\><C-n><CR>
    tnoremap <C-W>h <C-\><C-n><C-w>h<CR>
    tnoremap <C-W>j <C-\><C-n><C-w>j<CR>
    tnoremap <C-W>k <C-\><C-n><C-w>k<CR>
    tnoremap <C-W>l <C-\><C-n><C-w>l<CR>
endif

" list all current buffers
nnoremap <leader>bb :ls<CR>:b<Space>
" close buffer
nnoremap <leader>bc :bd<CR>
" move to next buffer
nnoremap <leader>bn :bn<CR>
" previous buffer
nnoremap <leader>bp :bp<CR>

" ignite Dash search
nmap <silent> <leader>d <Plug>DashSearch<CR>

" cursor only in active window
"augroup Cursoractive
    "au!
    "autocmd VimEnter, WinEnter, BufWinEnter * set local cursorline
    "autocmd WinLeave * setlocal nocursorline
"augroup END

" automatic resized windows
augroup on_vim_resized
    autocmd!
    autocmd VimResized * wincmd =
augroup END

" execute shell commands in buffer
nnoremap Q !!$SHELL <CR>

" init.vim editing
map <leader>- :e $HOME/AppData/Local/nvim/init.vim<CR>

" source init.vim
map <silent> <F1> :source $HOME/AppData/Local/nvim/init.vim<CR>

map <Leader><Space>,  <Plug>(easymotion-{motion}))

" Unite settings
nnoremap <F4> :Unite buffer<CR> " browse a list of the currently opened buffers
let g:pymode_python = 'python3'

" ConqueTerm
nnoremap <F5> :ConqueTermSplit ipython<CR> " run python-scripts at <F5>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR> " and debug-mode for <F6>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0

" ConqueTerm
nnoremap <F5> :ConqueTermSplit ipython<CR> " run python-scripts at <F5>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR> " and debug-mode for <F6>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0


"=====================================================
" User hotkeys
"=====================================================
" vnoremap <BS> d

" " CTRL-Z is Undo
" noremap <C-z> u
" inoremap <C-z> <C-O>u

" " CTRL-Y is Redo
" noremap <C-y> <C-R> 
" inoremap <C-y> <C-O><C-R>

" " CTRL-A is Select all
" noremap <C-a> gggH<C-O>G
" inoremap <C-a> <C-O>gg<C-O>gH<C-O>G
" cnoremap <C-a> <C-C>gggH<C-O>G
" onoremap <C-a> <C-C>gggH<C-O>G
" snoremap <C-a> <C-C>gggH<C-O>G
" xnoremap <C-a> <C-C>ggVG

" " CTRL-S is Quicksave command
" noremap <C-s> :update<CR>
" vnoremap <C-s> <C-C>:update<CR>
" inoremap <C-s> <C-O>:update<CR>

" " CTRL-X and SHIFT-Del are Cut
" vnoremap <C-X> "+x
" vnoremap <S-Del> "+x

" " CTRL-C and CTRL-Insert are Copy
 vnoremap <C-C> "+y
 vnoremap <y-y> "+yy
 vnoremap <C-Insert> "+y

" " CTRL-V and SHIFT-Insert are Paste
map <C-V>       "+gP
map <p>       "+gP
map <S-Insert>      "+gP
cmap <C-V>      <C-R>+
cmap <S-Insert>     <C-R>+


" " Settings for buffers
" map <C-q> :bd!<CR>          " close current buffer, CTRL-q
" noremap <C-Right> :bn<CR>  " move to next buffer, CTRL-Right
" noremap <C-Left> :bp<CR>   " move to previous buffer, CTRL-Left

" " Easier split navigations
" nnoremap <silent> <C-j> <c-w>h  " move to the right subwindows, CTRL-j
" nnoremap <silent> <C-l> <c-w>l  " move to the upper subwindow, CTRL-i
" nnoremap <silent> <C-i> <c-w>k  " move to the lower subwindow, CTRL-k
" nnoremap <silent> <C-k> <c-w>j  " move to the left subwindow, CTRL-l

" " Split managment
" map <silent> <A-s> :split<CR>   " Split horizontal, ALT-s
" map <silent> <A-v> :vsplit<CR>  " Split vertical, ALV-v

" " Easier change size for splitted window
" map <silent> <A-j> <C-w>>  " Increase size of the vertical split, ALT-j
" map <silent> <A-i> <C-W>+  " Increase size of the horizontal split, ALT-i
" map <silent> <A-k> <C-W>-  " Decrease size of the horizontal split, ALT-k
" map <silent> <A-l> <C-w><  " Decrease size of the vertical split, ALT-l

" " Activate autocomplete at <Ctrl+Space>
" SnipMate settings
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
" NERDTree

" Unite settings
" nnoremap <F4> :Unite buffer<CR> " browse a list of the currently opened buffers

" Jedi-vim
let g:jedi#show_call_signatures = 1 " show call signatures
let g:jedi#popup_on_dot = 1         " enable autocomplete on dot
let g:jedi#popup_select_first = 0   " disable first select from auto-complete
let g:jedi#goto_stubs = ""
let g:jedi#goto_command = "<leader>d " "run python-scripts at <F5>
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_stubs_command = "<leader>S"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader><leader>F"
" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_enable_signs = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1
noremap <f7> :w<CR>:SyntasticCheck<CR>

" Better :sign interface symbols
let g:syntastic_error_symbol = 'X'
let g:syntastic_style_error_symbol = 'X'
let g:syntastic_warning_symbol = 'x'
let g:syntastic_style_warning_symbol = 'x'

" Vim-Airline
let g:airline_theme='powerlineish'

"=====================================================
" Python-mode settings
"=====================================================
" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

" возможность запускать код
let g:pymode_run = 1
" Other options
let g:pymode_options_colorcolumn = 0
if has("gui_running")
    let g:airline_powerline_fonts = 1
else
    let g:airline_powerline_fonts = 0
endif
