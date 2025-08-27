return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 900, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('catppuccin').setup {
        styles = {
          comments = {}, -- Disable italics in comments
        },
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    end,
  },
  {
    'rose-pine/neovim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      require('rose-pine').setup {
        styles = {
          bold = true,
          italic = false,
          transparency = false,
        },
        highlight_groups = {
          MatchParen = { fg = 'gold', bold = true },
        },
      }
    end,
  },
  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 800,
    ---@type solarized.config
    opts = { variant = 'winter' },
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
    end,
  },
  {
    'vague2k/vague.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other plugins
    config = function()
      -- NOTE: you do not need to call setup if you don't want to.
      require('vague').setup {
        -- optional configuration here
      }
      vim.cmd 'colorscheme vague'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
