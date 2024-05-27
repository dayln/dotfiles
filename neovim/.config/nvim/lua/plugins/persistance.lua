return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    opts = { options = vim.opt.sessionoptions:get() },
  },
}
