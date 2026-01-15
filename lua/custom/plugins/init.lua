-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<C-l>',
          dismiss = '<C-k>',
          next = '<C-j>',
          prev = '<C-h>',
        },
      },
      panel = {
        enabled = false,
      },
    },
  },
}
