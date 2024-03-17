return {
  {
    'AlexvZyl/nordic.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'nordic'
    end,
  },

  -- Additional themes
  'navarasu/onedark.nvim',
  'folke/tokyonight.nvim',
  {
    'catppuccin/nvim',
    name = 'catppuccin',
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
  },
}
