require("toggleterm").setup({
    on_open = function(term)
    vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>]], {
      -- 设为 true，这样这个映射只在当前这个终端 buffer 中生效
      buffer = term.bufnr, 
      noremap = true,
      silent = true,
      desc = "Enter normal mode from terminal",
    })
  end,
})

