return {
  {
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('catppuccin').setup {
        styles = {
          comments = {}, -- Disable italics in comments
        },
      }
    end,
  },
  {
    'rose-pine/neovim',
    priority = 1000,
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
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('nordic').load {
        italic_comments = false,
      }
      vim.api.nvim_set_hl(0, 'LspReferenceText', { bg = '#3B4252', blend = 50 })
      vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = '#3B4252', blend = 50 })
      vim.api.nvim_set_hl(0, 'LspReferenceWrite', { bg = '#3B4252', blend = 50 })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
