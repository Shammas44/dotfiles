vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  command = "set nospell",
})

vim.api.nvim_create_autocmd({ "BufReadPost", "FileReadPost", "BufEnter" }, {
  pattern = { "*" },
  command = ":normal zR",
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  -- set bold and italics color highlight
  command = ":hi VimwikiBold  cterm=bold ctermfg=208 gui=bold guifg=#fe8019 | " ..
      ":hi VimwikiItalic cterm=bold ctermfg=175 guifg=#d3869b | " ..
      "set filetype=vimwiki"
})

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.md" },
  command = "silent! lua vim.keymap.set('n', '<leader>J', ':call mkdx#JumpToHeader()<CR>') | " ..
      "silent! lua vim.keymap.set('v','<Leader>i' , ':<C-U>call mkdx#WrapText('n', g:mkdx#settings.tokens.italic," ..
      " g:mkdx#settings.tokens.italic, 'mkdx-text-italic-v')<cr>"
})

-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.lua" },
--   command = "set foldmethod=indent |" ..
--       "set foldcolumn=2 |" ..
--       "set foldnestmax=1"
-- })

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
