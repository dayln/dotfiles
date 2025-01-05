return {
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()

      require('which-key').add {
        { '<leader>c', group = 'Code', mode = { 'n', 'x' } },
        { '<leader>d', group = 'Document' },
        { '<leader>s', group = 'Search' },
        { '<leader>w', group = 'Workspace' },
        { '<leader>t', group = 'Toggle' },
        { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'x' } },
      }
    end,
  },
}
