-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
vim.o.relativenumber = true

-- colorscheme
lvim.colorscheme = "gruvbox-baby"
vim.g.gruvbox_baby_transparent_mode = 1

-- keymappings
lvim.leader = "space"
lvim.builtin.which_key.mappings["x"] = {
    name = "+LaTeX",
    c = { "<cmd>TexlabBuild<cr>", "Compile" },
    x = { "<cmd>TexlabForward<cr>", "Compile and Search" },
}
lvim.builtin.which_key.mappings["P"] = {
    name = "+Papis",
    s = { "<cmd>Telescope papis<cr>", "Search" },
    o = { "<cmd>PapisOpenFile<cr>", "Open" },
    i = { "<cmd>PapisShowPopup<cr>", "Info" },
}

-- treesitter
lvim.builtin.treesitter.ensure_installed = {
    "bash", "json", "lua", "python", "latex", "yaml",
}

-- lsp
lvim.lsp.installer.setup.ensure_installed = {
    "pyright", "texlab",
}

-- formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    { command = "black", filetypes = { "python" } },
    { command = "isort", filetypes = { "python" } },
}

-- plugins
lvim.plugins = {

    -- colorscheme
    { 'luisiacc/gruvbox-baby' },

    -- backward search for latex documents
    { 'f3fora/nvim-texlabconfig',
        ft = { 'tex', 'bib' },
        run = "go build -o $GOPATH/bin/",
        config = function() require('texlabconfig').setup() end,
        -- Enable back search on Skim -> Preference -> Sync:
        --   Preset: Custom
        --   Command: /Users/simo/go/bin/nvim-texlabconfig
        --   Arguments: -file '%file' -line %line -cache_root /Users/simo/.cache/lvim
        -- (Commands and Arguments accept only full path, change '/User/simo')
    },

    -- Integration with papis (bibliography manager)
    {
        "jghauser/papis.nvim",
        after = { "telescope.nvim", "nvim-cmp" },
        requires = {
            "kkharji/sqlite.lua",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        rocks = {
            {
                "lyaml",
                -- brew install libyaml
                -- and then set YAML_DIR env variable (see zshenv)
                -- Moreover see this issue for debug compilation process of LuaJIT
                -- https://github.com/wbthomason/packer.nvim/discussions/937
            }
        },
        config = function()
          require("papis").setup(
              { init_filenames = { "%info_name%", "*.md", "*.norg", "*.tex" } }
          )
        end,
    }
}
