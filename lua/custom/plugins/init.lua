-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- { -- A beautiful and configurable statusline
  --   'nvim-lualine/lualine.nvim',
  --   dependencies = { 'nvim-tree/nvim-web-devicons' },
  --   config = function()
  --     -- This color palette is a DIRECT TRANSLATION of the Kanagawa Dragon
  --     -- theme variables from the source code you provided.
  --     local colors = {
  --       bg = '#282727', -- dragon_black_4 (main bar background)
  --       active_bg = '#393836', -- dragon_black_5 (active window background)
  --       fg = '#c8c093', -- old_white (main text color)
  --       inactive_fg = '#a6a69c', -- dragon_gray (dimmed text)
  --       mode_fg = '#16161d', -- sumi_ink_0 (text on mode indicators)
  --
  --       -- Mode Colors for the lualine mode indicator
  --       normal = '#8ba4b0', -- dragon_blue_2
  --       insert = '#87a987', -- dragon_green
  --       visual = '#8992a7', -- dragon_violet
  --       command = '#c4b28a', -- dragon_yellow
  --       replace = '#c4746e', -- dragon_red
  --     }
  --
  --     -- This theme perfectly mirrors the tmux status bar's flat design.
  --     local kanagawa_tmux_match_theme = {
  --       normal = {
  --         a = { bg = colors.active_bg, fg = colors.fg, gui = 'bold' },
  --         b = { bg = colors.bg, fg = colors.fg },
  --         c = { bg = colors.bg, fg = colors.fg },
  --       },
  --       insert = { a = { bg = colors.insert, fg = colors.mode_fg, gui = 'bold' } },
  --       visual = { a = { bg = colors.visual, fg = colors.mode_fg, gui = 'bold' } },
  --       command = { a = { bg = colors.command, fg = colors.mode_fg, gui = 'bold' } },
  --       replace = { a = { bg = colors.replace, fg = colors.mode_fg, gui = 'bold' } },
  --       inactive = {
  --         a = { bg = colors.bg, fg = colors.inactive_fg, gui = 'bold' },
  --         b = { bg = colors.bg, fg = colors.inactive_fg },
  --         c = { bg = colors.bg, fg = colors.inactive_fg },
  --       },
  --     }
  --
  --     -- Now we configure lualine itself
  --     require('lualine').setup {
  --       options = {
  --         theme = 'auto',
  --         -- Make separators empty for the clean, flat look
  --         component_separators = { left = '', right = '' },
  --         section_separators = { left = '', right = '' },
  --         disabled_filetypes = {
  --           statusline = {},
  --           winbar = {},
  --         },
  --         always_divide_middle = true,
  --       },
  --       sections = {
  --         lualine_a = { 'mode' },
  --         lualine_b = { '' },
  --         lualine_c = { 'filename' },
  --         lualine_x = { 'diagnostics', 'filetype' },
  --         lualine_y = { '' },
  --         lualine_z = { 'encoding' },
  --       },
  --     }
  --   end,
  -- },
  -- In lua/custom/plugins/init.lua, update your noice config:
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      lsp = {
        hover = {
          enabled = true,
          silent = true,
          opts = {
            border = {
              style = 'rounded',
              padding = { 1, 2 },
            },
            size = {
              max_width = 80,
              max_height = 20,
            },
          },
        },
        signature = {
          enabled = true, -- ← Re-enable noice signature
          opts = {
            border = {
              style = 'rounded',
              padding = { 1, 2 }, -- Same padding as hover
            },
            size = {
              max_height = 8, -- Limit height
              max_width = 80,
            },
          },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
  },
  {
    'folke/snacks.nvim',
    keys = {
      {
        '<leader>bs',
        function()
          Snacks.scratch()
        end,
        desc = 'Toggle Scratch Buffer',
      },
      {
        '<leader>bb',
        function()
          Snacks.scratch.select()
        end,
        desc = 'Select Scratch Buffer',
      },
    },
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      require('rose-pine').setup {
        variant = 'main',
        palette = {
          main = {
            base = '#12111b',
            surface = '#171522',
            overlay = '#1c1a2b',
            muted = '#585760',
            subtle = '#71707a',
            text = '#bebec4',
            love = '#ab7e8a',
            gold = '#b39f84',
            rose = '#ab9998',
            pine = '#6c8088',
            foam = '#87999d',
            iris = '#9a90a8',
            leaf = '#76807f',
            highlight_low = '#181822',
            highlight_med = '#302d3d',
            highlight_high = '#3d3b4d',
            _nc = '#100f17',
            none = 'NONE',
          },
        },
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },
}
