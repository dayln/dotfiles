return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        'go',
        'gomod',
        'gowork',
        'gosum',
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    opts = {
      gopls = {
        settings = {
          completeUnimported = true,
        },
      },
    },
    {
      'williamboman/mason.nvim',
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        vim.list_extend(opts.ensure_installed, { 'goimports', 'gofumpt' })
      end,
    },
  },
  {
    'stevearc/conform.nvim',
    opts = {
      formatters_by_ft = {
        go = { 'goimports', 'gofmt' },
      },
    },
  },
  {
    'mfussenegger/nvim-dap',
    dependencies = {
      {
        'williamboman/mason.nvim',
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          vim.list_extend(opts.ensure_installed, { 'delve' })
        end,
      },
      {
        'leoluz/nvim-dap-go',
        config = true,
      },
    },
  },
}
