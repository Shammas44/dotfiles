lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "gruvbox"
lvim.use_icons = true
lvim.leader = "space"
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- allow to use treeSitter folding
-- vim.cmd("set foldmethod=expr")
-- vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

vim.opt.rnu = true
vim.opt.autochdir = true -- PWD always follows the file I'm editing.
vim.opt.clipboard = ""
vim.opt.wrap = true -- Display long lines on multiples lines
vim.opt.linebreak = true -- Avoid word beaing cut on wrap
-- vim.opt.colorcolumn = 80 -- Display a vertical line at X column
-- vim.opt.smartcase = true
-- vim.opt.ignorecase = false
-- vim.opt.shiftwidth = 4 -- Indentation insert x spaces
-- vim.opt.tabstop = 4 -- default width of a tab
vim.g['loaded_perl_provider'] = 0
vim.g['loaded_ruby_provider'] = 0
vim.opt.tags = { "./tags;", "tags", "tags.global", "/Users/sebastientraber/Google Drive/vimwiki/tags.global" }
vim.opt.tags.append = { "~/Google\\ Drive/vimwiki/tags.global" }
vim.cmd("nnoremap <C-Q> <cmd>lua require('telescope.actions').send_selected_to_qflist()<CR>")


