local DEBUGGER_PATH = os.getenv('HOME') .. "/.local/share/lunarvim/site/pack/packer/opt/vscode-js-debug"

local M = {}

function M.setup()
  require("dap-vscode-js").setup {
    node_path = "node",
    debugger_path = DEBUGGER_PATH,
    -- debugger_cmd = { "js-debug-adapter" },
    adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
  }

  for _, language in ipairs { "typescript", "javascript" } do
    require("dap").configurations[language] = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "${file}",
        cwd = "${workspaceFolder}",
      },
      {
        type = "pwa-node",
        request = "attach",
        name = "Attach",
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
      },
      {
        type = "pwa-node",
        request = "launch",
        name = "Debug Jest Tests",
        -- trace = true, -- include debugger info
        runtimeExecutable = "node",
        runtimeArgs = {
          "./node_modules/jest/bin/jest.js",
          "--runInBand",
        },
        rootPath = "${workspaceFolder}",
        cwd = "${workspaceFolder}",
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
      },
      {
        type = "pwa-chrome",
        name = "Attach - Remote Debugging",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}",
      },
      {
        type = "pwa-chrome",
        name = "Launch Chrome",
        request = "launch",
        url = "http://localhost:8080",
      },
    }
  end
end

return M

-- local dap = require('dap')
-- local path = os.getenv('HOME') .. "/.local/share/nvim/mason/packages/"

-- dap.adapters.chrome = {
--   type = 'executable',
--   command = 'node',
--   args = { path .. "chrome-debug-adapter/out/src/chromeDebug.js" }
-- }

-- dap.adapters.javascript = {
--   type = 'executable',
--   command = 'node',
--   args = { path .. "chrome-debug-adapter/out/src/chromeDebug.js" }
-- }

-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = { path .. "/node-debug2-adapter/out/src/nodeDebug.js" },
-- }

-- dap.configurations.javascript = {
--   {
--     name = 'Launch node',
--     type = 'node2',
--     request = 'launch',
--     program = '${file}',
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = 'inspector',
--     console = 'integratedTerminal',
--   },
--   {
--     -- For this to work you need to make sure the node process
--     -- is started with the `--inspect` flag.
--     name = 'Attach to process',
--     type = 'node2',
--     request = 'attach',
--     processId = require 'dap.utils'.pick_process,
--   },
--   {
--     -- For this to work you need to make sure only one instance of chrome is running
--     -- and chrome has been started like this 'google-chrome-stable --remote-debugging-port=9222'
--     name = "chrome",
--     type = "chrome",
--     request = "attach",
--     program = "${file}",
--     cwd = vim.fn.getcwd(),
--     sourceMaps = true,
--     protocol = "inspector",
--     port = 9222,
--     webRoot = "${workspaceFolder}"
--   },
--   {
--     type = "pwa-chrome",
--     name = "Launch Chrome",
--     request = "launch",
--     url = "http://localhost:3000",
--   },
-- }
