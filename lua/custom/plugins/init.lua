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
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      vim.opt.cmdheight = 1
      vim.opt.laststatus = 3
      require('lualine').setup {
        options = {
          globalstatus = true,
          section_separators = '',
          component_separators = '|',
          theme = 'auto',
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { { 'buffers', mode = 2, symbols = { modified = ' ●' }, alternate_file = '' } }, -- 👈 shows all buffers
          lualine_c = { nil },
          lualine_x = { 'encoding', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      }
    end,
  },
  {
    'kylechui/nvim-surround',
    version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
