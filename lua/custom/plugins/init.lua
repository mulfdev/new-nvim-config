-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        -- Turn off the gutter background
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'none',
              },
            },
          },
        },
      }
    end,
  },
  { -- A beautiful and configurable statusline
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- This color palette is a DIRECT TRANSLATION of the Kanagawa Dragon
      -- theme variables from the source code you provided.
      local colors = {
        bg = '#282727', -- dragon_black_4 (main bar background)
        active_bg = '#393836', -- dragon_black_5 (active window background)
        fg = '#c8c093', -- old_white (main text color)
        inactive_fg = '#a6a69c', -- dragon_gray (dimmed text)
        mode_fg = '#16161d', -- sumi_ink_0 (text on mode indicators)

        -- Mode Colors for the lualine mode indicator
        normal = '#8ba4b0', -- dragon_blue_2
        insert = '#87a987', -- dragon_green
        visual = '#8992a7', -- dragon_violet
        command = '#c4b28a', -- dragon_yellow
        replace = '#c4746e', -- dragon_red
      }

      -- This theme perfectly mirrors the tmux status bar's flat design.
      local kanagawa_tmux_match_theme = {
        normal = {
          a = { bg = colors.active_bg, fg = colors.fg, gui = 'bold' },
          b = { bg = colors.bg, fg = colors.fg },
          c = { bg = colors.bg, fg = colors.fg },
        },
        insert = { a = { bg = colors.insert, fg = colors.mode_fg, gui = 'bold' } },
        visual = { a = { bg = colors.visual, fg = colors.mode_fg, gui = 'bold' } },
        command = { a = { bg = colors.command, fg = colors.mode_fg, gui = 'bold' } },
        replace = { a = { bg = colors.replace, fg = colors.mode_fg, gui = 'bold' } },
        inactive = {
          a = { bg = colors.bg, fg = colors.inactive_fg, gui = 'bold' },
          b = { bg = colors.bg, fg = colors.inactive_fg },
          c = { bg = colors.bg, fg = colors.inactive_fg },
        },
      }

      -- Now we configure lualine itself
      require('lualine').setup {
        options = {
          theme = kanagawa_tmux_match_theme,
          -- Make separators empty for the clean, flat look
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          always_divide_middle = true,
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch' },
          lualine_c = {
            {
              'filename',
              fmt = function(str)
                return '  ' .. str
              end,
            },
          },
          lualine_x = { 'diagnostics', 'filetype' },
          lualine_y = { '' },
          lualine_z = { 'encoding' },
        },
      }
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
  },
}
