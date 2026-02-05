require "nvchad.options"

-- add yours here!

local o = vim.o
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 4
o.expandtab = true
o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

o.foldmethod = "indent"
o.foldlevel = 99
