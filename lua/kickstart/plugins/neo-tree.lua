-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  config = function()
    require('neo-tree').setup {
      opts = {
        filesystem = {
          window = {
            mappings = {
              ['\\'] = 'close_window',
            },
          },
        },
      },

      event_handlers = {
        {
          event = 'file_opened',
          handler = function(file_path)
            -- This command closes all Neo-tree windows in the current tab.
            require('neo-tree.command').execute { action = 'close' }
          end,
        },
      },
    }
  end,
}
