-- must have lsp on path

--
-- Set up lspconfig.
--local capabilities = require('cmp_nvim_lsp').default_capabilities()
--local pid = vim.fn.getpid()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
--require('lspconfig')['omnisharp'].setup {
-- cmd = { "omnisharp", "-z", "--hostPID", "12345", "DotNet:enablePackageRestore=false", "--encoding", "utf-8", "--languageserver" },
--  capabilities = capabilities
--}

--require('lspconfig')['lua_ls'].setup {
--capabilities = capabilities
--}

--vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
--vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
--
--local cmp = require('cmp')

--lsp key mappings
--cmp.setup({
--mapping = cmp.mapping.preset.insert({
-- confirm completion
--['<enter>'] = cmp.mapping.confirm({ select = true }),
--}),
--})
