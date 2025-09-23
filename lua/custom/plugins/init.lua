-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'folke/snacks.nvim',
    opts = {
      bigfile = { enabled = true },
    },
  },

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

  {
    'tpope/vim-fugitive',
    cmd = { 'Git', 'G' },
  },

  {
    'coder/claudecode.nvim',
    dependencies = { 'folke/snacks.nvim' },
    config = true,
    keys = {
      { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude' },
      { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
      { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
      { '<leader>aC', '<cmd>ClaudeCode --continue<cr>', desc = 'Continue Claude' },
      { '<leader>am', '<cmd>ClaudeCodeSelectModel<cr>', desc = 'Select Claude model' },
      { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add current buffer' },
      { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
      {
        '<leader>as',
        '<cmd>ClaudeCodeTreeAdd<cr>',
        desc = 'Add file',
        ft = { 'NvimTree', 'neo-tree', 'oil', 'minifiles' },
      },
      -- Diff management
      { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
      { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Deny diff' },
    },
    opts = {
      terminal_cmd = 'aifx agent run claude', -- Point to local installation
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
