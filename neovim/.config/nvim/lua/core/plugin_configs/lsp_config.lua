require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "cssls", "dockerls", "eslint", "html", "marksman", "pylyzer", "sorbet", "rubocop", "tailwindcss", "tsserver", "vuels", "jsonls"  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', '<F12>', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {
  on_attach = on_attach
}
lspconfig.rust_analyzer.setup {
  on_attach = on_attach
}
lspconfig.clangd.setup {
  on_attach = on_attach
}
lspconfig.cssls.setup {
  on_attach = on_attach
}
lspconfig.dockerls.setup {
  on_attach = on_attach
}
lspconfig.eslint.setup {
  on_attach = on_attach
}
lspconfig.html.setup {
  on_attach = on_attach
}
lspconfig.jsonls.setup {
  on_attach = on_attach
}
lspconfig.marksman.setup {
  on_attach = on_attach
}
lspconfig.pylyzer.setup {
  on_attach = on_attach
}
lspconfig.sorbet.setup {
  on_attach = on_attach
}
lspconfig.rubocop.setup {
  on_attach = on_attach
}
lspconfig.tailwindcss.setup {
  on_attach = on_attach
}
lspconfig.tsserver.setup {
  on_attach = on_attach
}
lspconfig.vuels.setup {
  on_attach = on_attach
}
