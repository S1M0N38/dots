return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      tex = { "latexindent" },
      markdown = { "mdformat" },
      -- not installed with Mason but using pipx
      -- `pipx install mdformat`
      -- `pipx inject mdformat mdformat-gfm mdformat-frontmatter mdformat-footnote`
    },
    -- Customize formatters
    formatters = {
      latexindent = {
        prepend_args = { "-l" },
      },
    },
  },
}
