-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

-- AI
wk.register({
  ["<leader>a"] = { name = "AI", mode = { "n", "v" } },
  ["<leader>aa"] = { "<cmd>ChatGPTActAs<cr>", "Act As", mode = { "n", "v" } },
  ["<leader>ac"] = { "<cmd>ChatGPT<cr>", "Chat", mode = { "n", "v" } },
  ["<leader>ae"] = { "<cmd>ChatGPTEditWithInstructions<cr>", "Edit With Instructions", mode = { "n", "v" } },
  ["<leader>ar"] = { "<cmd>ChatGPTRun<cr>", "Run Action", mode = { "n", "v" } },
})
wk.register({
  ["<leader>ar"] = { name = "Run Action", mode = { "n", "v" } },
  ["<leader>ard"] = { "<cmd>ChatGPTRun docstring<cr>", "Docstring", mode = { "n", "v" } },
  ["<leader>art"] = { "<cmd>ChatGPTRun translate<cr>", "Translate", mode = { "n", "v" } },
  ["<leader>arx"] = { "<cmd>ChatGPTRun explain_code<cr>", "Explain Code", mode = { "n", "v" } },
  ["<leader>arg"] = { "<cmd>ChatGPTRun grammar_correction<cr>", "Grammar Correction", mode = { "n", "v" } },
})

-- LaTex
wk.register({
  ["<leader>t"] = { name = "LaTex", mode = { "n" } },
  ["<leader>tt"] = { "<cmd>TexlabForward<cr>", "Build & Forward", mode = { "n" } },
  ["<leader>tb"] = { "<cmd>TexlabBuild<cr>", "Build", mode = { "n" } },
})

-- Papis
wk.register({
  ["<leader>p"] = { name = "papis", mode = { "n" } },
  ["<leader>pp"] = { "<cmd>Telescope papis<cr>", "Search", mode = { "n" } },
  ["<leader>po"] = { "<cmd>PapisOpenFile<cr>", "Open", mode = { "n" } },
  ["<leader>pe"] = { "<cmd>PapisEditEntry<cr>", "Edit", mode = { "n" } },
  ["<leader>pi"] = { "<cmd>PapisShowPopup<cr>", "Info", mode = { "n" } },
})

-- ZenMode
wk.register({
  ["<leader>z"] = { "<cmd>ZenMode<cr>", "ZenMode", mode = { "n" } },
})
