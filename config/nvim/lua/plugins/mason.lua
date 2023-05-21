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

      -- latex: lsp
      "tectonic",
      "texlab",
    },
  },
}
