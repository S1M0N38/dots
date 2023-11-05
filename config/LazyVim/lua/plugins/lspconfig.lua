return {
  "neovim/nvim-lspconfig",
  opts = {
    -- LSP Server Settings
    ---@type lspconfig.options
    servers = {
      texlab = {
        settings = {
          texlab = {
            -- build = {
            --   executable = "tectonic",
            --   args = { "-X", "compile", "%f", "--synctex", "--keep-logs", "--keep-intermediates" },
            --   onSave = true,
            --   forwardSearchAfter = true,
            --   auxDirectory = "./aux",
            --   logDirectory = "./log",
            -- },
            forwardSearch = {
              executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
              args = { "-g", "%l", "%p", "%f" },
            },
            diagnostics = {
              -- Ignore "Unused label" warning. I like to put labels on sections, subsections, etc.
              -- Ignore "* Draft mode on." warning. I use it to speed up compilation.
              ignoredPatterns = { "Unused label", "Unused entry" },
            },
          },
        },
      },
    },
  },
}
