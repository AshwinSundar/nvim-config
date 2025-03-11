return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  ft = { 'markdown' },
  build = function()
    vim.fn['mkdp#util#install']() -- if :MarkdownPreview doesn't work, run the following once manually: `:call mkdp#util#install()`
  end,
}
