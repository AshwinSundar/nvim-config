return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  keys = {
    {
      '<leader>b',
      function()
        require('telescope').extensions.file_browser.file_browser()
      end,
      mode = '',
      desc = 'Open Telescope File [B]rowser',
    },
  },
}
-- Alternatively, using lua API
