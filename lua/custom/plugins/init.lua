-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'tpope/vim-fugitive' },
  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'
      harpoon:setup {} -- or just harpoon:setup()

      -- Keymaps
      vim.keymap.set('n', '<leader>fm', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Harpoon: Add file' })

      vim.keymap.set('n', '<leader>b', function()
        harpoon:list():prev()
      end, { desc = 'Harpoon: Previous mark' })

      vim.keymap.set('n', '<leader>w', function()
        harpoon:list():next()
      end, { desc = 'Harpoon: Next mark' })
    end,
  },
}
