return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "Search files" })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = "Search with grep" })
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "Search help" })
      vim.keymap.set('n', '<leader>so', builtin.oldfiles, { desc = "Search oldfiles" })
      vim.keymap.set('n', '<leader>sk', builtin.oldfiles, { desc = "Search oldfiles" })
      vim.keymap.set('n', "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "Key Maps" })
      vim.keymap.set('n', "<leader>sb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
        { desc = "Search buffers" })
    end
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    config = function()
      require('telescope').load_extension('fzf')
    end
  },
}
