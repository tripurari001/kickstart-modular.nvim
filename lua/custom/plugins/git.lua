-- fugitive
vim.pack.add { 'https://github.com/tpope/vim-fugitive' }


vim.pack.add({ "https://github.com/CoreyKaylor/diffbandit.nvim" })
require("diffbandit").setup({
  navigation = {
    align_on_jump = true,
  },
  ui = {
    theme = {
      min_background_delta = 0.5 -- default: 0.08
    },
  },
})
