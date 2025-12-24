-- nvim/lua/kickstart/plugins/neo-tree.lua
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  config = function()
    require('neo-tree').setup {
      -- Configuration for filesystem source
      filesystem = {
        hide_dotfiles = false,
        hide_git_ignored = false,
        filtered_items = {
          visible = true,
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
      -- Event handlers are also top-level
      event_handlers = {
        {
          event = 'file_opened',
          handler = function(_)
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
      -- You might also have other top-level tables here like 'buffers', 'git_status', etc.
    }
  end,
}
