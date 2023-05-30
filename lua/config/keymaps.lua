-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<esc>", { desc = "Exit insert mode" })

vim.keymap.set("n", "<leader>xf", vim.diagnostic.open_float, { desc = "Pop-up error messages" })

-- Jump to the first char or the begginning of the line
local function jump_line_0()
  local head = (vim.api.nvim_get_current_line():find("[^%s]") or 1) - 1
  local cursor = vim.api.nvim_win_get_cursor(0)
  cursor[2] = cursor[2] == head and 0 or head
  vim.api.nvim_win_set_cursor(0, cursor)
end
-- vim.keymap.set({'i', 'n'}, '<Home>', home)
vim.keymap.set("n", "0", jump_line_0, { desc = "Jump to the first char or the begginning of the line" })
