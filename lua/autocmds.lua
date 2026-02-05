require "nvchad.autocmds"

local function set_terminal_title()
  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':t')
  local title = project_name
  vim.opt.titlestring = title
  vim.api.nvim_command('set title')
  vim.api.nvim_command('silent !echo -ne "\\033]2;' .. title .. '\\007"')
end

vim.api.nvim_create_autocmd('VimEnter', {
  pattern = '*',
  callback = set_terminal_title,
})
