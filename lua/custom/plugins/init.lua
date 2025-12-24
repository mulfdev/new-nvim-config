return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify', -- optional
    },
    opts = {
      cmdline = {
        view = 'cmdline_popup',
      },
      messages = {
        enabled = true,
      },
      popupmenu = {
        enabled = true,
      },
      lsp = {
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
        },
      },
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local colors = {
        fg = '#bebec4',
        bg = 'NONE',
      }
      local theme = {
        normal = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
        insert = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
        visual = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
        replace = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
        command = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
        inactive = {
          a = { fg = colors.fg, bg = colors.bg },
          b = { fg = colors.fg, bg = colors.bg },
          c = { fg = colors.fg, bg = colors.bg },
          z = { fg = colors.fg, bg = colors.bg },
        },
      }
      local function relative_path()
        local filepath = vim.fn.expand '%:p'
        if filepath == '' then
          return '[No File]'
        end
        local cwd = vim.fn.getcwd()
        if filepath:sub(1, #cwd) == cwd then
          return filepath:sub(#cwd + 2)
        end
        return vim.fn.expand '%:t'
      end

      require('lualine').setup {
        options = {
          theme = theme,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { { 'branch', icon = '󰘬' } },
          lualine_c = { { relative_path, icon = '󰉋' } },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
      }
    end,
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
