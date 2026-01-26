require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>tg", "<cmd>Telescope live_grep<CR>", { desc = "live grep" })
map("n", "<leader>tf", "<cmd>Telescope find_files<CR>", { desc = "find files" })
map("n", "<leader>to", "<cmd>Telescope oldfiles<CR>", { desc = "old files" })
map("n", "<leader>tb", "<cmd>Telescope buffers<CR>", { desc = "find buffers" })
map("n", "<leader>ec", "<cmd>NvimTreeClose<CR>", { desc = "close file explorer" })

map("n", "<leader>tG", function()
  local yanked = vim.fn.getreg('"')
  require('telescope.builtin').live_grep({ default_text = yanked })
end, { desc = "live grep with yanked content" })
