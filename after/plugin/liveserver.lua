vim.api.nvim_create_user_command('LiveServer', function()
  local cmd = 'live-server'
  vim.cmd('! '..cmd)
end, {})
