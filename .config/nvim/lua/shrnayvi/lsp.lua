local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'rust_analyzer'
})

lsp.set_preferences({
  sign_icons =  {}
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set('n', '<leader>jd', function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set('n', '<leader>jD', function() vim.lsp.buf.declaration() end, opts)
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

