-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- Yank and Paste improved BUG: still use system clipboard
-- wk.register({
--   ["<leader>p"] = { [["_dP]], "Paste no yank", mode = { "x" } },
--   ["<leader>y"] = { [["+y]], "Yank to cb", mode = { "v" } },
--   ["<leader>Y"] = { [["+Y]], "Yank line to cb", mode = { "n" } },
--   ["<leader>yy"] = { "<cmd> %y+ <CR>", "Yank buf", mode = { "n" } },
-- })

-- Git open
wk.register({
  ["<leader>go"] = { "<cmd>! git open<cr>", "open", mode = { "n" } },
})

-- Papis
wk.register({
  ["<leader>p"] = { name = "papis", mode = { "n" } },
  ["<leader>pp"] = { "<cmd>Telescope papis<cr>", "Search", mode = { "n" } },
  ["<leader>po"] = { "<cmd>PapisOpenFile<cr>", "Open", mode = { "n" } },
  ["<leader>pe"] = { "<cmd>PapisEditEntry<cr>", "Edit", mode = { "n" } },
  ["<leader>pi"] = { "<cmd>PapisShowPopup<cr>", "Info", mode = { "n" } },
})

-- Galileo v4
wk.register({
  ["<leader>a"] = { name = "galileo", mode = { "n" } },
  ["<leader>aa"] = { "<cmd>GalileoToggle<cr>", "Toggle Chat", mode = { "n" } },
  ["<leader>an"] = { "<cmd>Galileo<cr>", "New Chat", mode = { "n" } },
  ["<leader>ar"] = { "<cmd>Lazy reload galileo.nvim<cr>", "Reload plugin", mode = { "n" } },
  ["<leader>ay"] = { [["gy]], "Yank to Chat", mode = { "v" } },
  -- WIP
  ["<leader>as"] = { "<cmd>Telescope Galileo<cr>", "Search prompt", mode = { "n" } },
  ["<leader>ap"] = { "<cmd>'<,'>GalileoPaste<cr>", "Paste from Chat", mode = { "n" } },
})

-- Execute Lua
wk.register({
  ["<leader>cx"] = { "<cmd>w | luafile %<CR>", "Execute Lua", mode = { "n" } },
})
