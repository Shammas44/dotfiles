vim.api.nvim_create_user_command('SayHello', function()
  vim.cmd(':!echo hello')
end, { nargs = '*' })
