return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
    },
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local projects = {
        action = "Telescope project",
        desc = " Projects",
        icon = " ",
        key = "p",
      }

      projects.desc = projects.desc .. string.rep(" ", 43 - #projects.desc)
      projects.key_format = "  %s"
      table.insert(opts.config.center, 3, projects)

      opts.config.header = vim.split(string.rep("\n", 15), "\n")
      opts.config.footer = {}
    end,
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
              { find = "%d lines moved" },
              { find = "%d lines indented" },
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
