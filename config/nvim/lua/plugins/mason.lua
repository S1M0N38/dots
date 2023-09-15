return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {

      -- lua: lsp, formatter
      "lua-language-server",
      "stylua",

      -- shell: linter, formatter
      "shellcheck",
      "shfmt",

      -- python:
      "ruff", -- linter
      "ruff-lsp", -- lsp
      "pyright", -- lsp
      "isort", -- formatter
      "black", -- formatter

      -- latex: lsp
      "tectonic",
      "texlab",
    },
  },
}
