-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require('plugins')
-- empty setup using defaults
require("nvim-tree").setup()
require('config.nvim-cmp')
require('utils')
require('config.lsp_config')
require('config.nvim-treesitter')
require("toggleterm").setup{}
require('leap').create_default_mappings()
require('telescope').setup({

defaults = {
    layout_config = {
        --width = 1.0,
        height = 0.99,
        width = 0.99,
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
})
require('telescope').load_extension('fzf')

