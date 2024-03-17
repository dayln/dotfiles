return {
  -- TODO: Explore more tree sitter plugins and features
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'VeryLazy' },
    opts = {
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        'bash',
        'c',
        'html',
        'json',
        'jsonc',
        'lua',
        'markdown',
        'vim',
        'vimdoc',
        'yaml',
      },
    },
    config = function(_, opts)
      -- Make ensure_installed unique
      if type(opts.ensure_installed) == 'table' then
        local added = {}
        opts.ensure_installed = vim.tbl_filter(function(lang)
          if added[lang] then
            return false
          end
          added[lang] = true
          return true
        end, opts.ensure_installed)
      end
      require('nvim-treesitter.configs').setup(opts)
    end,
  },
}
