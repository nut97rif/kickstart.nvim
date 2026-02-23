return {
  'vim-test/vim-test',
  keys = {
    { 't<C-n>', '<cmd>TestNearest<cr>', desc = 'Test nearest' },
    { 't<C-f>', '<cmd>TestFile<cr>', desc = 'Test file' },
    { 't<C-s>', '<cmd>TestSuite<cr>', desc = 'Test suite' },
    { 't<C-l>', '<cmd>TestLast<cr>', desc = 'Test last' },
    { 't<C-g>', '<cmd>TestVisit<cr>', desc = 'Test visit' },
  },
  config = function()
    -- Run tests in Neovim terminal split
    vim.g['test#strategy'] = 'neovim'
    -- Use project vendor PHPUnit (trfewo-api and similar)
    vim.g['test#php#phpunit#executable'] = './vendor/bin/phpunit'
  end,
}
