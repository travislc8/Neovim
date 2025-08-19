vim.lsp.enable('lua_ls')
vim.lsp.config('omnisharp', {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
})
vim.lsp.enable('omnisharp')
vim.print(vim.lsp.config['omnisharp'])
