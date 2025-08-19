-- lsp executables must be in PATH
vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.config('omnisharp', {
    capabilities = require('cmp_nvim_lsp').default_capabilities()
})
vim.lsp.enable('omnisharp')

local set = vim.keymap.set

set("n", "[[", "<Cmd>lua vim.diagnostic.jump({count=-1, float=true})<CR>")
set("n", "]]", "<Cmd>lua vim.diagnostic.jump({count=1, float=true})<CR>")

set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>")
set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>")
set("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>")
set({"n", "v"}, "gca", "<Cmd>lua vim.lsp.buf.code_action()<CR>")

-- "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
-- "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
-- "grt" is mapped in Normal mode to |vim.lsp.buf.type_definition()|
-- "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
-- CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|
-- "an" and "in" are mapped in Visual mode to outer and inner incremental
--  selections, respectively, using |vim.lsp.buf.selection_range()|
