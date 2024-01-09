return {
  {
    -- Python virtual environment selector
    "linux-cultist/venv-selector.nvim",
    opts = {
      auto_refresh = true,
      search = false,
    },
  },
  {
    -- Project selector
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-project.nvim",
      },
    },
    opts = {
      extensions = {
        project = {
          theme = "dropdown",
          base_dirs = {
            "~/Developer",
          },
          on_project_selected = function(prompt_bufnr)
            local project_actions = require("telescope._extensions.project.actions")
            project_actions.find_project_files(prompt_bufnr, false)
            -- auto activate venv
            require("venv-selector").retrieve_from_cache()
          end,
        },
      },
    },
    keys = {
      { "<leader>fp", "<cmd>Telescope project<CR>", desc = "Projects" },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("project")
    end,
  },
}
