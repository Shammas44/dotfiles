-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")

-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- local function map(mode, lhs, rhs, opts)
--     local options = { noremap = true, silent = true }
--     if opts then
--         if opts.desc then
--             opts.desc = "keymaps.lua: " .. opts.desc
--         end
--         options = vim.tbl_extend('force', options, opts)
--     end
--     vim.keymap.set(mode, lhs, rhs, options)
-- end

-- lvim.keys.normal_mode["<C-j>"] = ":ToggleTerm size=15 direction=horizontal name=main<cr> "
lvim.keys.normal_mode["<Leader>Z"] = ":ZenMode<cr>"
lvim.keys.normal_mode["<Leader>W"] = ":!~/dotfiles/vim/.vim/getIndex.ps1<cr> | <Plug>VimwikiIndex"

-- For switch to last edited buffer
vim.keymap.set('n', '<C-n>', '<C-6>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('c', 'jk', '<Esc>')
vim.keymap.set('v', '<Leader>C', ':ChatGPDEditWithInstructions')

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<c-s>", "<cmd>lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)

vim.cmd("nmap è [")
vim.cmd("nmap ¨ ]")
vim.cmd("omap è [")
vim.cmd("omap ¨ ]")
vim.cmd("xmap è [")
vim.cmd("xmap ¨ ]")


