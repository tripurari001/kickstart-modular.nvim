-- Utility plugins 


-- snacks.nvim
vim.pack.add { 'https://github.com/folke/snacks.nvim' }

require('snacks').setup({
  bigfile = { enabled = true },
})


-- fzf-lua
vim.pack.add {
  'https://github.com/nvim-tree/nvim-web-devicons',
  'https://github.com/ibhagwan/fzf-lua'
}

vim.keymap.set('n', '<leader>sf', ':FzfLua files<CR>', {
  desc = '[S]earch [F]iles',
  silent = true,
})


-- workspaces.nvim
vim.pack.add { 'https://github.com/natecraddock/workspaces.nvim' }

require('workspaces').setup()
vim.keymap.set('n', '<leader>wl', ':Telescope workspaces<cr>', {
  desc = '[W]orkspaces [L]ist',
})
vim.keymap.set('n', '<leader>wa', ':WorkspacesAdd<space>', {
  desc = '[W]orkspaces [A]dd',
})
