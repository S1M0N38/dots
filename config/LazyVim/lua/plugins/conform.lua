return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      markdown = { "mdformat" },
      python = { "ruff_format" },
      zsh = { "shfmt" },
      tex = { "latexindent" },
    },
  },
}
