-- Options
vim.opt.conceallevel = 3
vim.opt.cursorline = true
vim.opt.grepprg = "rg --vimgrep"
vim.opt.list = true
vim.opt.termguicolors = true
vim.opt.spelllang = { "en", "it" }
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.smoothscroll = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Cleaner statusbar
vim.opt.winbar = "%=%m %f"
vim.opt.laststatus = 0 -- 3 global statusline
vim.opt.ruler = false
vim.opt.showcmd = false
vim.opt.showmode = false

-- Providers
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "/Users/simo/.local/share/virtualenvs/nvim/bin/python"
vim.opt.pyxversion = 3

-- Tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


-- Keymaps
vim.g.mapleader = " "

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })

-- buffer switch
vim.keymap.set("n", "<S-h>", vim.cmd.bprevious, { desc = "Prev buffer" })
vim.keymap.set("n", "<S-l>", vim.cmd.bnext, { desc = "Next buffer" })

-- Move to window using the <ctrl> hjkl keys
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- better indenting
vim.keymap.set("v", "<", "<gv", { desc = "Go to right window", noremap = true })
vim.keymap.set("v", ">", ">gv", { desc = "Go to right window", noremap = true })

-- move lines
vim.keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", { desc = "Move up lines", remap = true })
vim.keymap.set("v", "<S-K>", ":m '<-2<CR>gv=gv", { desc = "Move down lines", remap = true })

-- better "J" (keep cursor in place)
vim.keymap.set("n", "J", "mzJ`z")

-- better half-page scrolling (keep cursor in the center)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- improved yank and paste
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y")
vim.keymap.set({ "n", "v" }, "<leader>Y", "\"+Y")
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")
vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "YankHighlight",
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 80 }
  end,
})


-- File Explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Lexplore, { desc = "Open NetRW" })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function(args)
    vim.api.nvim_buf_set_keymap(0, "n", "<C-h>", "<C-w>h",
      { desc = "Go to left window" })
    vim.api.nvim_buf_set_keymap(0, "n", "<C-j>", "<C-w>j",
      { desc = "Go to lower window" })
    vim.api.nvim_buf_set_keymap(0, "n", "<C-k>", "<C-w>k",
      { desc = "Go to upper window" })
    vim.api.nvim_buf_set_keymap(0, "n", "<C-l>", "<C-w>l",
      { desc = "Go to right window" })
  end
})
