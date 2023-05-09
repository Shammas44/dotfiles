local dap = require('dap')
local path = os.getenv('HOME') .. "/.local/share/nvim/mason/packages/"

dap.adapters.cppdbg = {
  id = 'cppdbg',
  type = 'executable',
  command = path .. "cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "cppdbg",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    miDebuggerPath = '/usr/local/bin/gdb',
    targetArchitecture = 'x86_64',
    stopAtEntry = true,
    filterStdout = true,
    externalConsole = true,
  },
  {
    name = 'Attach to gdbserver :1234',
    type = 'cppdbg',
    request = 'launch',
    MIMode = 'gdb',
    miDebuggerServerAddress = 'localhost:1234',
    miDebuggerPath = '/usr/local/bin/gdb',
    externalConsole = true,
    filterStdout = true,
    cwd = '${workspaceFolder}',
    targetArchitecture = 'x86_64',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
  },
}

dap.configurations.c = dap.configurations.cpp
