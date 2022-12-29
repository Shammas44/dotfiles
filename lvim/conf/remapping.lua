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

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<Leader>z"] = ":ZenMode<cr>"
lvim.keys.normal_mode["<Leader><Leader>"] = "/"
lvim.keys.normal_mode["<C-j>"] = ":ToggleTerm<cr>"
lvim.keys.normal_mode["<Leader>ww"] = ":!~/dotfiles/vim/.vim/getIndex.ps1<cr> | <Plug>VimwikiIndex"

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
vim.keymap.set('i', 'jk', '<Esc>')
vim.keymap.set('c', 'jk', '<Esc>')
vim.keymap.set('v', '<Leader>C', ':ChatGPDEditWithInstructions')

vim.cmd("nmap è [")
vim.cmd("nmap ¨ ]")
vim.cmd("omap è [")
vim.cmd("omap ¨ ]")
vim.cmd("xmap è [")
vim.cmd("xmap ¨ ]")
