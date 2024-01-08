return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = {
      config = {
        header = vim.split(string.rep("\n", 15), "\n"),
        footer = {},
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d fewer lines" },
              { find = "%d more lines" },
              { find = "%d lines <ed %d time[s]?" },
              { find = "%d lines >ed %d time[s]?" },
              { find = "%d lines yanked" },
            },
          },
          opts = { skip = true },
        },
      },
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static",
      render = "minimal",
    },
  },
}
