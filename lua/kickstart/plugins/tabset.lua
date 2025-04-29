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
        {
          filetypes = { 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'json', 'yaml', 'terraform' },
          config = {
            tabwidth = 2,
            shiftwidth = 2,
          },
        },
      },
    }
  end,
}
