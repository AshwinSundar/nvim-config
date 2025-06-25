return {
  'justinmk/vim-sneak',
  config = function()
    -- Enable sneak
    vim.g['sneak#label'] = 1

    -- Case insensitive sneak
    -- vim.g['sneak#use_ic_scs'] = 1

    -- Immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
    -- vim.g['sneak#s_next'] = 1

    -- Map regular s/S to use sneak
    vim.api.nvim_set_keymap('n', 's', '<Plug>Sneak_s', {})
    vim.api.nvim_set_keymap('n', 'S', '<Plug>Sneak_S', {})
    vim.api.nvim_set_keymap('x', 's', '<Plug>Sneak_s', {})
    vim.api.nvim_set_keymap('x', 'S', '<Plug>Sneak_S', {})
    vim.api.nvim_set_keymap('o', 's', '<Plug>Sneak_s', {})
    vim.api.nvim_set_keymap('o', 'S', '<Plug>Sneak_S', {})

    -- Map f/F/t/T to use sneak as well
    vim.api.nvim_set_keymap('n', 'f', '<Plug>Sneak_f', {})
    vim.api.nvim_set_keymap('n', 'F', '<Plug>Sneak_F', {})
    vim.api.nvim_set_keymap('n', 't', '<Plug>Sneak_t', {})
    vim.api.nvim_set_keymap('n', 'T', '<Plug>Sneak_T', {})
    vim.api.nvim_set_keymap('x', 'f', '<Plug>Sneak_f', {})
    vim.api.nvim_set_keymap('x', 'F', '<Plug>Sneak_F', {})
    vim.api.nvim_set_keymap('x', 't', '<Plug>Sneak_t', {})
    vim.api.nvim_set_keymap('x', 'T', '<Plug>Sneak_T', {})
    vim.api.nvim_set_keymap('o', 'f', '<Plug>Sneak_f', {})
    vim.api.nvim_set_keymap('o', 'F', '<Plug>Sneak_F', {})
    vim.api.nvim_set_keymap('o', 't', '<Plug>Sneak_t', {})
    vim.api.nvim_set_keymap('o', 'T', '<Plug>Sneak_T', {})
  end,
}
