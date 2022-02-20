call plug#begin('~/.vim/plugged')
"Languages~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'Vimjas/vim-python-pep8-indent'
"Special~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/emmet-vim'
Plug 'mileszs/ack.vim'
Plug 'w0rp/ale'
Plug 'nelstrom/vim-visual-star-search'
Plug 'sjl/gundo.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/LargeFile'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'                   " Comment stuff out
"--------------===Python languages ===---------------
Plug 'jmcantrell/vim-virtualenv'              " Virtualenv support in VIM
Plug 'vimwiki/vimwiki'
Plug 'tell-k/vim-autopep8'
Plug 'bfredl/nvim-ipy'
"--------------=== Snippets support ===---------------
Plug 'SirVer/ultisnips'                    " Snippets manager
Plug 'honza/vim-snippets'                     " Snippets repo
"------------------=== FUZZY ===----------------------
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'                     "syntax
Plug 'nvim-lua/popup.nvim'
"Git~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Themes~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'icymind/NeoSolarized'
Plug 'joshdick/onedark.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'liuchengxu/space-vim-theme'
Plug 'nightsense/nemo'
Plug 'yuttie/hydrangea-vim'
Plug 'chriskempson/tomorrow-theme', { 'rtp': 'vim' }
Plug 'rhysd/vim-color-spring-night'
" Aethetics - Additional
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'ryanoasis/vim-devicons'
Plug 'psliwka/vim-smoothie'
Plug 'chrisbra/Colorizer'

call plug#end()
