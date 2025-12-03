-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true


-- empty setup using defaults
require("nvim-tree").setup()
require('config.nvim-cmp')
require('utils')
require('config.lsp_config')
require('config.nvim-treesitter')
require('config.toggleterm')
require('config.telescope')

require('lualine').setup({
  tabline = {
    lualine_a = {'buffers'},
    lualine_z = {'tabs'}
    -- 可根据需求调整顺序和内容
  }
})
vim.keymap.set('n', '<Leader><Leader>s', '<Plug>(easymotion-s)')

