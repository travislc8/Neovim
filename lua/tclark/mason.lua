require("mason").setup()
require("mason-lspconfig").setup {
    automatic_enable = false
}

local lspconfig = require("lspconfig")
lspconfig.omnisharp.setup({})
