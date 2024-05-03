require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "cssls", "dockerls", "eslint", "html", "marksman", "pylyzer", "sorbet", "rubocop", "tailwindcss", "tsserver", "vuels", "jsonls"  }
})
local on_attach = function(_, _)
  vim.keymap.set({'n', 'i'}, '<F2>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.pylyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.sorbet.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.rubocop.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
lspconfig.vuels.setup {
  on_attach = on_attach,
  capabilities = capabilities,  
}
vim.g.rustfmt_autosave = 1
vim.diagnostic.config({ update_in_insert = true })
