-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    -- or if using mini.icons/mini.nvim
    -- dependencies = { "echasnovski/mini.icons" },
    cmd = 'FzfLua',
    keys = {
      { '<leader>sf', ':FzfLua files<CR>', desc = '[S]earch [F]iles', silent = true },
    },
  },

  {
    'natecraddock/workspaces.nvim',
    config = function()
      require('workspaces').setup()

      vim.keymap.set('n', '<leader>wl', ':Telescope workspaces<cr>', { desc = '[W]orkspaces [L]ist' })
      vim.keymap.set('n', '<leader>wa', ':WorkspacesAdd<space>', { desc = '[W]orkspaces [A]dd' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
