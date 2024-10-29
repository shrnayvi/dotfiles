local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
  --'tsserver',
  'ts_ls',
  'gopls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.Select
}
local cmp_mappings = lsp.defaults.cmp_mappings({
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
  ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
  ["<C-Space>"] = cmp.mapping.complete(),
  ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
})

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
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

