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
     "renerocksai/calendar-vim",
     {
          "ahmedkhalf/project.nvim",
          lazy = false,
     },
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
        "Vigemus/iron.nvim",
        lazy = false,
      },
    {
  "phaazon/hop.nvim",
  opts = {},
  keys = {
    {
      "s",
      function() require("hop").hint_words() end,
      mode = { "n" },
      desc = "Hop hint words",
    },
    {
      "<S-s>",
      function() require("hop").hint_lines() end,
      mode = { "n" },
      desc = "Hop hint lines",
    },
    {
      "s",
      function() require("hop").hint_words { extend_visual = true } end,
      mode = { "v" },
      desc = "Hop hint words",
    },
    {
      "<S-s>",
      function() require("hop").hint_lines { extend_visual = true } end,
      mode = { "v" },
      desc = "Hop hint lines",
    },
  },
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
