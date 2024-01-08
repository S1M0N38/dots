-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable provider
vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Setup Python provider
vim.g.python3_host_prog = vim.fn.expand("$XDG_DATA_HOME") .. "/virtualenvs/nvim/bin/python"

-- Language
vim.opt.spelllang = { "en", "it" }

-- VimTex
vim.g.tex_flavor = "latex"
vim.g.vimtex_compiler_latexmk = { aux_dir = "aux" }
