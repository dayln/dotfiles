return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',

    'williamboman/mason.nvim',
    {
      'jay-babu/mason-nvim-dap.nvim',
      opts = {
        -- Makes a best effort to setup the various debuggers with
        -- reasonable debug configurations
        automatic_setup = true,

        -- You can provide additional configuration to the handlers,
        -- see mason-nvim-dap README for more information
        handlers = {},

        -- You'll need to check that you have the required things installed
        -- online, please don't ask me how to install them :)
        ensure_installed = {
          -- Update this  ensure that you have the debuggers for the langs you want
        },
      },
    },
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    -- TODO: Change these
    -- Basic debugging keymaps, feel free to change to your liking!
    vim.keymap.set('n', '<leader>dc', dap.continue, { desc = '[D]ebug [C]ontinue/Start' })
    vim.keymap.set('n', '<leader>dC', dap.continue, { desc = '[D]ebug to [C]cursor' })
    vim.keymap.set('n', '<leader>di', dap.step_into, { desc = '[D]ebug Step [I]nto' })
    vim.keymap.set('n', '<leader>do', dap.step_over, { desc = '[D]ebug Step [O]ver' })
    vim.keymap.set('n', '<leader>dO', dap.step_out, { desc = '[D]ebug Step [O]ut' })
    vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = '[D]ebug Toggle [B]reakpoint' })
    vim.keymap.set('n', '<leader>dB', function()
      dap.set_breakpoint(vim.fn.input 'Breakpoint condition: ')
    end, { desc = '[D]ebug Set [B]reakpoint' })

    dapui.setup {
      icons = { expanded = '▾', collapsed = '▸', current_frame = '*' },
      controls = {
        icons = {
          pause = '⏸',
          play = '▶',
          step_into = '⏎',
          step_over = '⏭',
          step_out = '⏮',
          step_back = 'b',
          run_last = '▶▶',
          terminate = '⏹',
          disconnect = '⏏',
        },
      },
    }

    -- Toggle to see last session result. Without this, you can't see session output in case of unhandled exception.
    vim.keymap.set('n', '<F7>', dapui.toggle, { desc = 'Debug: See last session result.' })

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close
  end,
}
