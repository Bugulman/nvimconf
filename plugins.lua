local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "junegunn/vim-easy-align",
          lazy = false,

  },
  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  "andymass/vim-matchup",
     -- "folke/zen-mode.nvim",
     "karb94/neoscroll.nvim",
     "junegunn/vim-slash",
     -- "renerocksai/telekasten.nvim",
     -- "renerocksai/calendar-vim",
     {
          "windwp/nvim-spectre",
          lazy = false,
     },
     "jmcantrell/vim-virtualenv",
     -- "nanotee/sqls.nvim",
     "SirVer/ultisnips",
     "honza/vim-snippets",
     "quangnguyen30192/cmp-nvim-ultisnips",
     -- "vim-scripts/vim-autopep8",
     {
          "mg979/vim-visual-multi",
          lazy = false,
     },
     {
          "mbbill/undotree",
          lazy = false,
     },
     {
          "huggingface/hfcc.nvim",
          opts = {
               api_token = "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", -- cf Install paragraph
               model = "bigcode/starcoder",                         -- can be a model ID or an http(s) endpoint
               -- parameters that are added to the request body
               query_params = {
                    max_new_tokens = 256,
                    temperature = 0.3,
                    top_p = 0.5,
                    stop_token = "<|endoftext|>",
               },
               -- set this if the model supports fill in the middle
               fim = {
                    enabled = true,
                    prefix = "<fim_prefix>",
                    middle = "<fim_middle>",
                    suffix = "<fim_suffix>",
               },
          },
          lazy = false,
     },
     {
          "folke/todo-comments.nvim",
          dependencies = { "nvim-lua/plenary.nvim" },
          opts = {
          },
          lazy = false,
     },
     {
          "lalitmee/browse.nvim",
          dependencies = { "nvim-telescope/telescope.nvim" },
          lazy = false,
          provider = 'brave',
     },
     {
        "rmagatti/auto-session",
        opts = {
          log_level = 'info',
          auto_session_enable_last_session = false,
          auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
          auto_session_enabled = true,
          auto_save_enabled = nil,
          auto_restore_enabled = nil,
          auto_session_suppress_dirs = nil,
          auto_session_use_git_branch = nil,
          -- the configs below are lua only
          bypass_session_save_file_types = nil
        },
        event = "VeryLazy"
      },
    {
        "rmagatti/session-lens",
         event = "VeryLazy"
      },

    {
{
  "folke/flash.nvim",
  event = "VeryLazy",
  -- -@type Flash.Config
  opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
},
      {"karb94/neoscroll.nvim", lazy = false, opts = {} },
  	  {"kana/vim-textobj-user"},
  		{"kana/vim-textobj-line"},
  		{"GCBallesteros/vim-textobj-hydrogen"},
  		{"GCBallesteros/jupytext.vim"},
      {"tpope/vim-repeat"},
      {"pappasam/nvim-repl", lazy = false}
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
