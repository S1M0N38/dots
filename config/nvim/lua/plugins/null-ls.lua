-- Work around to make `gq` formatting work with `markdownlint`
-- https://github.com/jose-elias-alvarez/null-ls.nvim/issues/1131#issuecomment-1457584752
require("lazyvim.util").on_attach(function(client, buf)
  if client.name == "null-ls" then
    if not require("null-ls.generators").can_run(vim.bo[buf].filetype, require("null-ls.methods").lsp.FORMATTING) then
      vim.bo[buf].formatexpr = nil
    end
  end
end)

return {
  "jose-elias-alvarez/null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.stylua,
        nls.builtins.formatting.shfmt,
        nls.builtins.diagnostics.markdownlint,
        nls.builtins.formatting.markdownlint,
        nls.builtins.formatting.black,
        nls.builtins.formatting.isort,
      },
    }
  end,
}
