return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        theme = 'wave',
        overrides = function(colors)
          local theme = colors.theme
          return {
            NormalFloat = { bg = 'none' },
            FloatBorder = { bg = 'none' },
            FloatTitle = { bg = 'none' },

            -- Save an hlgroup with dark background and dimmed foreground
            -- so that you can use it where your still want darker windows.
            -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
            NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

            -- Popular plugins that open floats will link to NormalFloat by default;
            -- set their background accordingly if you wish to keep them dark and borderless
            LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
            TelescopeTitle = { fg = theme.ui.special, bold = true },
            TelescopePromptNormal = { bg = theme.ui.bg_p1 },
            TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
            TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
            TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
            TelescopePreviewNormal = { bg = theme.ui.bg_dim },
            TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          }
        end,
      }
      vim.cmd 'highlight MatchParen gui=underline cterm=underline'
      vim.cmd 'colorscheme kanagawa'
    end,
  },
  { ---
    'ellisonleao/gruvbox.nvim',
    priority = 900,
    config = function()
      require('gruvbox').setup {
        italic = {
          strings = false,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
      }
      -- vim.cmd 'colorscheme gruvbox'
    end,
  },

  {
    'EdenEast/nightfox.nvim',
    name = 'nightfox',
    priority = 900,
    config = function()
      require('nightfox').setup {}
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
