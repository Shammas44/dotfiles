--                   __ _         _
--   ___ ___  _ __  / _(_) __ _  | |_   _  __ _
--  / __/ _ \| '_ \| |_| |/ _` | | | | | |/ _` |
-- | (_| (_) | | | |  _| | (_| |_| | |_| | (_| |
--  \___\___/|_| |_|_| |_|\__, (_)_|\__,_|\__,_|
--                        |___/

require("user.options")
require("user.which-key")
require("user.treesitter")
require("user.lsp")
require("user.formatter")
require("user.linters")
require("user.plugins")
require("user.usercommands")
require("user.autocommands")
require("user.remapping")
require("user.abbreviations")
require("user.debbugers")

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end

-- =====================================================================
-- NEOVIM INTEGRATION FOR STACK VISUALIZER
-- Add this to your init.lua or a dedicated module.
-- =====================================================================

local M = {}

-- Generates a JSON stack dump using GDB at the current cursor position
function M.generate_stack_json()
    -- Get the absolute path of the current buffer and current line number
    local file = vim.fn.expand('%:p')
    local line = vim.fn.line('.')
    
    -- Prompt the user for the executable name (defaults to ./a.out)
    local executable = vim.fn.input("Executable path (default: ./bin/main): ", "./bin/main")
    if executable == "" then 
        executable = "./bin/main" 
    end
    
    -- Ask the user for optional program arguments
    local args = vim.fn.input("Program arguments (optional): ")

    -- Ask the user for an optional conditional breakpoint
    -- GDB syntax examples:
    --   if count == 10
    --   if my_ptr != 0
    --   if strcmp(my_str, "test") == 0
    local condition = vim.fn.input("Condition (e.g. 'if i == 5', optional): ")
    
    -- Check if the GDB python script exists in the current directory
    if vim.fn.filereadable("gdb_stack_exporter.py") == 0 then
        vim.notify("Error: gdb_stack_exporter.py not found in current directory!", vim.log.levels.ERROR)
        return
    end

    -- Construct the breakpoint command
    local break_cmd = string.format("break %s:%d", file, line)
    if condition ~= "" then
        -- Ensure 'if ' prefix exists to match GDB syntax
        if not string.match(condition, "^if%s+") then
            condition = "if " .. condition
        end
        break_cmd = break_cmd .. " " .. condition
    end

    -- Construct the run command
    local run_cmd = "run"
    if args ~= "" then
        run_cmd = run_cmd .. " " .. args
    end

    -- Construct the full headless GDB command
    -- -batch: Exits GDB after running commands
    -- -ex: Executes GDB commands in sequence
    local cmd = string.format(
        "gdb -batch -ex '%s' -ex '%s' -ex 'source gdb_stack_exporter.py' -ex 'dump_stack' -ex 'quit' %s",
        break_cmd, run_cmd, executable
    )
    
    vim.notify("Spawning GDB and generating stack trace...", vim.log.levels.INFO)
    
    -- Execute GDB asynchronously
    vim.fn.jobstart(cmd, {
        on_exit = function(_, exit_code, _)
            if exit_code == 0 then
                vim.notify("Stack dump generated successfully: stack_dump.json", vim.log.levels.INFO)
            else
                vim.notify("Failed to generate stack dump. Did you compile with -g?", vim.log.levels.ERROR)
            end
        end,
        stdout_buffered = true,
        stderr_buffered = true,
    })
end

-- =====================================================================
-- WHICH-KEY REGISTRATION EXAMPLE
-- =====================================================================
-- Ensure you have which-key installed before using this block.
local status_ok, wk = pcall(require, "which-key")
if status_ok then
    wk.register({
        ["<leader>d"] = {
            name = "+debug",
            e = { M.generate_stack_json, "Generate Stack JSON at Cursor" },
        }
    })
else
    -- Fallback normal mode mapping if which-key is not installed
    vim.keymap.set('n', '<leader>de', M.generate_stack_json, { desc = "Generate Stack JSON at Cursor" })
end

return M
