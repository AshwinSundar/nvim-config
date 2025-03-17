return {
  'FotiadisM/tabset.nvim',
  config = function()
    require('tabset').setup {
      defaults = {
        tabwidth = 4,
        expandtab = true,
      },
      languages = {
        lua = {
          tabwidth = 2,
        },
        htmldjango = {
          tabwidth = 2,
        },
        make = {
          expandtab = false,
        },
        typescriptreact = {
          tabwidth = 2,
        },
      },
    }
  end,
}
