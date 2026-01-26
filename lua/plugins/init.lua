return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "SmiteshP/nvim-navic",
    event = "LspAttach",
    config = function()
      require("nvim-navic").setup {
        lsp = {
          auto_attach = true,
        },
      }
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "ggandor/leap.nvim",
    keys = { "s", "S", "x", "X" },
    config = function()
      -- Default mappings as per :help leap-mappings
      vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap)')
      vim.keymap.set('n',             'S', '<Plug>(leap-from-window)')
      -- For exclusive selection
      vim.keymap.set({'x', 'o'},      'x', '<Plug>(leap-forward-till)')
      vim.keymap.set({'x', 'o'},      'X', '<Plug>(leap-backward-till)')
    end,
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
