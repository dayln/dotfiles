local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  -- Need to have separate modules for opts merge to occur
  -- Consider moving plugins/lang to lang
  spec = {
    { import = 'plugins' },
    { import = 'plugins/lang' },
  },
  checker = { enabled = true },
}
