return {
  'toppair/peek.nvim',
  event = { 'VeryLazy' },
  build = 'deno task --quiet build:fast',
  theme = 'light',
  config = function()
    require('peek').setup {
      theme = 'light',
      app = 'browser',
      throttle_time = 500,
    }
    vim.api.nvim_create_user_command('Peek', require('peek').open, {})
    vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
    vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})
  end,
}
