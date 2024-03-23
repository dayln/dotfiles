return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    opts = {
      compile = true,
    },
    init = function()
      vim.cmd.colorscheme 'kanagawa-dragon'
    end,
  },
  'AlexvZyl/nordic.nvim',

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
