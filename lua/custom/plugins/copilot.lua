return {
  'github/copilot.vim',
  lazy = false, -- lazy loading
  config = function()
    vim.keymap.set('i', '<C-Y>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false,
    })
  end,
}
