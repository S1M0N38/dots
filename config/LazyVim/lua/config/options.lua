-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.loaded_python_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.python3_host_prog = "/Users/simo/.local/share/virtualenvs/nvim/bin/python"
vim.opt.pyxversion = 3

-- set background (and consequently colorscheme) based on macOS appearance
local function on_exit(_, code)
  if code == 1 then
    vim.cmd("set background=light")
  else
    vim.cmd("set background=dark")
  end
end
vim.fn.jobstart("defaults read -g AppleInterfaceStyle", { on_exit = on_exit })

-- Latex
vim.g.tex_flavor = "latex"
vim.g.vimtex_compiler_latexmk = { aux_dir = "aux" }
