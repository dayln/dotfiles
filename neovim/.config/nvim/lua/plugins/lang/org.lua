return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        'org',
      })
    end,
  },
  {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup_ts_grammar()

      require('orgmode').setup {
        org_agenda_files = '~/Documents/notes/**/*',
        org_default_notes_file = '~/Documents/notess/refile.org',
      }
    end,
  },
  {
    'hrsh7th/nvim-cmp',
    opts = {
      sources = {
        { name = 'orgmode' },
      },
    },
  },
}
