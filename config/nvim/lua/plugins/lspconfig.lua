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
            diagnostics = {
              -- Ignore "Unused label" warning. I like to put labels on sections, subsections, etc.
              ignoredPatterns = { "Unused label" },
            },
          },
        },
      },
      ltex = {
        settings = {
          ltex = {
            enabled = { "tex", "bib" },
            language = "en",
          },
        },
      },
      pyright = {},
      ruff_lsp = {},
    },
    setup = {
      ruff_lsp = function()
        require("lazyvim.util").on_attach(function(client, _)
          if client.name == "ruff_lsp" then
            -- Disable hover in favor of Pyright
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
}
