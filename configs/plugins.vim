call plug#begin('~/.vim/plugged')
"Languages
"Special
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'easymotion/vim-easymotion'
" Plug 'machakann/vim-highlightedyank'
Plug 'sjl/gundo.vim'
Plug 'jiangmiao/auto-pairs'
" Plug 'preservim/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/LargeFile'
" Plug 'majutsushi/tagbar'
Plug 'liuchengxu/vista.vim'
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
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'                     "syntax
Plug 'nvim-lua/popup.nvim'
"Git~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plug 'airblade/vim-gitgutter'
Plug 'kdheepak/lazygit.nvim'
Plug 'lewis6991/gitsigns.nvim'
" Plug 'tpope/vim-fugitive'
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
" Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-journal'
Plug 'ryanoasis/vim-devicons'
" Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'psliwka/vim-smoothie'
Plug 'chrisbra/Colorizer'
Plug 'renerocksai/telekasten.nvim'
Plug 'renerocksai/calendar-vim'
  " -- My plugins here
 Plug 'wbthomason/packer.nvim' " Have packer manage itself
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'kyazdani42/nvim-tree.lua'
 Plug 'akinsho/bufferline.nvim'
 Plug 'moll/vim-bbye'
 Plug 'nvim-lualine/lualine.nvim'
 Plug 'akinsho/toggleterm.nvim'
 Plug 'ahmedkhalf/project.nvim'
 Plug 'lewis6991/impatient.nvim'
 Plug 'lukas-reineke/indent-blankline.nvim'
 Plug 'goolord/alpha-nvim'
 Plug 'antoinemadec/FixCursorHold.nvim' " This is needed to fix lsp doc highlight
 Plug 'folke/which-key.nvim'
  " " cmp plugins
 Plug 'hrsh7th/nvim-cmp' " The completion plugin
 Plug 'hrsh7th/cmp-buffer' " buffer completions
 Plug 'hrsh7th/cmp-path' " path completions
 Plug 'hrsh7th/cmp-cmdline' " cmdline completions
 Plug 'saadparwaiz1/cmp_luasnip' " snippet completions
 Plug 'hrsh7th/cmp-nvim-lsp'
  " -- snippets
 " Plug 'L3MON4D3/LuaSnip' "snippet engine
 " Plug 'rafamadriz/friendly-snippets' " a bunch of snippets toPlug
  " -- LSP
 Plug 'neovim/nvim-lspconfig' " enable LSP
 Plug 'williamboman/nvim-lsp-installer' " simple toPlug language server installer
 Plug 'tamago324/nlsp-settings.nvim' " language server settings defined in json for
 Plug 'jose-elias-alvarez/null-ls.nvim' " for formatters and linters
call plug#end()
