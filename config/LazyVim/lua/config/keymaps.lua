-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Improved yank/paste/delete
vim.opt.clipboard = "" -- Disable copy to system clipboard
map("x", "<leader>p", '"_dP', { desc = "Paste without overwriting the default register" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without overwriting the default register" })
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map({ "n", "v" }, "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

-- better "J" (keep cursor in place)
map("n", "J", "mzJ`z")

-- Toggle linebreak
map("n", "<leader>uW", "<cmd>set linebreak!<cr>", { desc = "Toggle Line Break" })

-- Toggle Copilot
map("n", "<leader>cc", function()
  if require("copilot.client").is_disabled() then
    require("copilot.command").enable()
  else
    require("copilot.command").disable()
  end
end, { desc = "Toggle Copilot" })
