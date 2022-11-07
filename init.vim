source ~/AppData/Local/nvim/configs/functions.vim
source ~/AppData/Local/nvim/configs/core-sets.vim
source ~/AppData/Local/nvim/configs/core-mappings.vim
source ~/AppData/Local/nvim/configs/plugin-mappings.vim
source ~/AppData/Local/nvim/configs/plugin-variables.vim
source ~/AppData/Local/nvim/configs/autocmd.vim
source ~/AppData/Local/nvim/configs/telekasten.vim
lua require "user.hot-reload"
" lua require "user.keymaps"
lua require "user.plugins"
lua require "user.autocommands"
lua require "user.colorscheme"
lua require "user.cmp"
lua require "user.navic"
lua require "user.lsp"
lua require "user.telescope"
lua require "user.treesitter"
lua require "user.autopairs"
lua require "user.comment"
lua require "user.gitsigns"
lua require "user.nvim-tree"
lua require "user.lualine"
lua require "user.toggleterm"
lua require "user.project"
lua require "user.impatient"
lua require "user.indentline"
lua require "user.alpha"
lua require "user.whichkey"
lua require "user.hop"
lua require "user.matchup" --awosome thngs, but need more practice, work with blocks with %
lua require "user.dial" --interesting stuff, but increment work without any  plugin
lua require "user.colorizer"
lua require "user.spectre"--cool thing!
lua require "user.zen-mode"
lua require "user.neoscroll"
lua require "user.todo-comments"
lua require "user.bookmark"
lua require "user.symbol-outline"  --don't work, look vista plugin instead
" -- [[TODO:]] try  to remove this
lua require "user.git-blame" --not so useful add commit message at the end of lines
" -- [[TODO:]] try  to remove this
lua require "user.gist" --what is this
lua require "user.gitlinker" --open github project in browser
lua require "user.notify" --pull up massages
lua require "user.registers"
" TODO: need to test sniprun functionality
lua require "user.iron"--looks very interesting for code testing, but i don't now how it work
lua require "user.sniprun"--looks very interesting for code testing, but i don't now how it work
lua require "user.functions"
lua require "user.cybu" --pull up  messages for buffers
lua require "user.options"
lua require "user.nvim-webdev-icons"
lua require "user.bfs"
lua require "user.dressing" --i think this stuff onlu for developers, will see later
lua require "user.fidget"
lua require "user.browse" --AWESOME!!!!
" lua require "user.auto-session"
lua require "user.jaq" --run code, not shure about this
lua require "user.surround"
lua require "user.harpoon" --interesting thing, but no indea why use it. Telescope better for my
lua require "user.lab" --interesting for short scripting
lua require "user.vim-slash"
