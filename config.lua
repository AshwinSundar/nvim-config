-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

vim.opt.wrap = true
vim.opt.belloff = "all"
lvim.colorscheme = "elflord"

vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>:echo "file saved"<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>Telescope fd<CR>', { noremap = true })

lvim.plugins = {
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- for example
    },
    config = function()
      vim.cmd "highlight default link gitblame SpecialComment"
      require("gitblame").setup {
        enabled = true ,
        -- message_template = " <author> • <date> • <summary> • <<sha>>", -- template for the blame message, check the Message template section for more options
        date_format = "(%r) %a %b %d %y %H:%M:%S", -- template for the date, check Date format section for more options
        -- virtual_text_column = 1,  -- virtual text start column, check Start virtual text at column section for more options    },
      }
    end,
  }
}