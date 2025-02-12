return {
  'gorbit99/codewindow.nvim',
  -- No direct dependencies needed
  config = function()
    local codewindow = require 'codewindow'
    codewindow.setup {
      auto_enable = false,
      max_minimap_height = 100,
      minimap_width = 16,
      with_multiplier = 10,
    }

    -- Optional: Add keybindings if you want them
    vim.keymap.set('n', '<leader>mm', function()
      codewindow.toggle_minimap()
    end, { desc = 'Toggle [M]ini[m]ap' })
    vim.keymap.set('n', '<leader>mf', function()
      codewindow.toggle_focus()
    end, { desc = 'Toggle [M]inimap [F]ocus' })
  end,
}
