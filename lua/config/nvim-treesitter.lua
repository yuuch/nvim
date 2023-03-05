 require('nvim-treesitter.configs').setup{
   ensure_installed = {"c", "cpp", "lua", "vim"},

  highlight = {
    enable = true,
    disable = {'help'}
  },
}
