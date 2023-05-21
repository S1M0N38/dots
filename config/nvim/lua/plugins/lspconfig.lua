return {
  "neovim/nvim-lspconfig",
  opts = {
    -- LSP Server Settings
    ---@type lspconfig.options
    servers = {
      texlab = {
        settings = {
          texlab = {
            build = {
              executable = "tectonic",
              args = { "-X", "compile", "%f", "--synctex", "--keep-logs", "--keep-intermediates" },
              onSave = true,
              forwardSearchAfter = true,
            },
            forwardSearch = {
              executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
              args = { "-g", "%l", "%p", "%f" },
            },
          },
        },
      },
    },
  },
}
