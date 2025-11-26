-- lua/config/telescope.lua

local telescope = require("telescope")
local builtin = require("telescope.builtin")
local actions = require("telescope.actions")

-- 自动获取 yank（"）寄存器内容，处理空内容情况
-- 保留寄存器内容以便重复使用
local function get_yanked()
  local yanked = vim.fn.getreg('"')
  -- 如果内容为空或仅包含空白字符，则返回nil
  if yanked and string.match(yanked, "^%s*$") then
    return nil
  end
  return yanked
end

-- ================================
-- Telescope 主要配置
-- ================================
telescope.setup({
  defaults = {
    layout_config = {
        --width = 1.0,
        height = 0.99,
        width = 0.99,
      -- other layout configuration here
    },
    mappings = {
      i = {
        ["<esc>"] = actions.close,
      },
    },
  },
})

-- ================================
-- 加载扩展（如果你有安装）
-- ================================

-- ================================
-- Keymaps（Lua 风格）
-- ================================
local keymap = vim.keymap.set

-- find_files 自动填入上次 yy 内容
keymap("n", "<leader>tf", function()
  local yanked = get_yanked()
  if yanked then
    builtin.find_files({ default_text = yanked })
  else
    builtin.find_files()
  end
end, { desc = "Telescope find_files with yank" })

-- live_grep 自动填入上次 yy 内容
keymap("n", "<leader>tg", function()
  local yanked = get_yanked()
  if yanked then
    builtin.live_grep({ default_text = yanked })
  else
    builtin.live_grep()
  end
end, { desc = "Telescope live_grep with yank" })

-- grep_string 自动填入 yy
keymap("n", "<leader>ts", function()
  local yanked = get_yanked()
  if yanked then
    builtin.grep_string({ search = yanked })
  else
    builtin.grep_string()
  end
end, { desc = "grep_string with yank" })

-- 打开普通 Telescope（无自动填）
keymap("n", "<leader>tb", builtin.buffers, { desc = "buffers" })
keymap("n", "<leader>th", builtin.help_tags, { desc = "help tags" })
keymap("n", "<leader>to", builtin.oldfiles, { desc = "old files" })

-- 添加一个不带自动填入的live_grep映射，用于直接输入搜索内容
keymap("n", "<leader>tG", builtin.live_grep, { desc = "Telescope live_grep without yank" })

