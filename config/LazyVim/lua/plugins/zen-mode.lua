return {
  dir = "/Users/simo/Developer/zen-mode.nvim",
  event = "VeryLazy",
  opts = {
    window = {
      backdrop = 1,
      width = 81,
      height = 1,
      col_offset = -5,
    },
    on_open = function()
      vim.o.linebreak = true
    end,
  },
}
