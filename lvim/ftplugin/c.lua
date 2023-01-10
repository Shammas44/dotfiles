vim.api.nvim_create_user_command('SayYo', function()
  vim.cmd(':!echo Yo')
end, { nargs = '*' })

