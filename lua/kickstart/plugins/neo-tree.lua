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
  lazy = true,
  keys = {
    --{ '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    {
      '<leader>e',
      function()
        vim.cmd 'tabnew'
        vim.cmd 'Neotree toggle'
      end,
      desc = 'Explorer (tab)',
      silent = true,
    },
    {
      '<leader>E',
      function()
        vim.cmd 'Neotree toggle'
      end,
      desc = 'Explorer (here)',
      silent = true,
    },
  },
  opts = {
    event_handlers = {
      {
        event = 'file_open_requested',
        handler = function()
          require('neo-tree.command').execute { action = 'close' }
        end,
      },
    },
  },
}
