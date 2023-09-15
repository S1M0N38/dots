return {
  "jghauser/papis.nvim",
  dependencies = {
    "kkharji/sqlite.lua",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("papis").setup({
      papis_python = {
        dir = "~/Developer/master-thesis/papers",
        default_library = "thesis",
        info_name = "info.yaml",
      },
      enable_keymaps = false,
      init_filenames = { "%info_name%", "*.tex", "*.md" },
    })
  end,
}
