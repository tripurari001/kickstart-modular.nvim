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
    config = function()
      require('fzf-lua').setup {}
      local fzf = require 'fzf-lua'
      vim.keymap.set('n', '<leader>sf', function()
        fzf.files()
      end, { desc = '[S]earch [F]iles' })
    end,
  },
}

-- vim: ts=2 sts=2 sw=2 et
