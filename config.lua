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
  },
  {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      -- log_level = 'debug',
    }
  },
  {
      "Isrothy/neominimap.nvim",
      version = "v3.*.*",
      enabled = true,
      lazy = false, -- NOTE: NO NEED to Lazy load
      -- Optional
      keys = {
          -- Global Minimap Controls
          { "<leader>nm", "<cmd>Neominimap toggle<cr>", desc = "Toggle global minimap" },
          { "<leader>no", "<cmd>Neominimap on<cr>", desc = "Enable global minimap" },
          { "<leader>nc", "<cmd>Neominimap off<cr>", desc = "Disable global minimap" },
          { "<leader>nr", "<cmd>Neominimap refresh<cr>", desc = "Refresh global minimap" },

          -- Window-Specific Minimap Controls
          { "<leader>nwt", "<cmd>Neominimap winToggle<cr>", desc = "Toggle minimap for current window" },
          { "<leader>nwr", "<cmd>Neominimap winRefresh<cr>", desc = "Refresh minimap for current window" },
          { "<leader>nwo", "<cmd>Neominimap winOn<cr>", desc = "Enable minimap for current window" },
          { "<leader>nwc", "<cmd>Neominimap winOff<cr>", desc = "Disable minimap for current window" },

          -- Tab-Specific Minimap Controls
          { "<leader>ntt", "<cmd>Neominimap tabToggle<cr>", desc = "Toggle minimap for current tab" },
          { "<leader>ntr", "<cmd>Neominimap tabRefresh<cr>", desc = "Refresh minimap for current tab" },
          { "<leader>nto", "<cmd>Neominimap tabOn<cr>", desc = "Enable minimap for current tab" },
          { "<leader>ntc", "<cmd>Neominimap tabOff<cr>", desc = "Disable minimap for current tab" },

          -- Buffer-Specific Minimap Controls
          { "<leader>nbt", "<cmd>Neominimap bufToggle<cr>", desc = "Toggle minimap for current buffer" },
          { "<leader>nbr", "<cmd>Neominimap bufRefresh<cr>", desc = "Refresh minimap for current buffer" },
          { "<leader>nbo", "<cmd>Neominimap bufOn<cr>", desc = "Enable minimap for current buffer" },
          { "<leader>nbc", "<cmd>Neominimap bufOff<cr>", desc = "Disable minimap for current buffer" },

          ---Focus Controls
          { "<leader>nf", "<cmd>Neominimap focus<cr>", desc = "Focus on minimap" },
          { "<leader>nu", "<cmd>Neominimap unfocus<cr>", desc = "Unfocus minimap" },
          { "<leader>ns", "<cmd>Neominimap toggleFocus<cr>", desc = "Switch focus on minimap" },
      },
      init = function()
          -- The following options are recommended when layout == "float"
          vim.opt.wrap = false
          vim.opt.sidescrolloff = 36 -- Set a large value

          --- Put your configuration here
          ---@type Neominimap.UserConfig
          vim.g.neominimap = {
              auto_enable = true,
              click = {
                enabled = true,
              },
              float = {
                minimap_width = 15,
                window_border = "none", -- "none", "rounded", "solid", "shadow", "single", "double"
              }
          }
      end,
  }
}
