-- general
lvim.log.level = "warn"
lvim.format_on_save = false
lvim.colorscheme = "gruvbox-baby"

-- colorscheme
vim.g.gruvbox_baby_transparent_mode = 1

-- keymappings
lvim.leader = "space"
lvim.builtin.which_key.mappings["x"] = {
  name = "+LaTex",
  c = { "<cmd>TexlabBuild<cr>", "Compile" },
  x = { "<cmd>TexlabForward<cr>", "Compile and Search" },
}

-- treesitter
lvim.builtin.treesitter.ensure_installed = {
  "bash", "json", "lua", "python", "latex", "yaml",
}

-- lsp
lvim.lsp.installer.setup.ensure_installed = {
  "pyright", "texlab", "ltex",
}

-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black", filetypes = { "python" } },
  { command = "isort", filetypes = { "python" } },
}

-- plugins 
lvim.plugins = {
  { 'luisiacc/gruvbox-baby' },
  { 'f3fora/nvim-texlabconfig', run = "go build -o $GOPATH/bin/" }
}

-- autocommands
vim.api.nvim_create_autocmd("FileType", {
  pattern = "zsh",
  callback = function()
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})
