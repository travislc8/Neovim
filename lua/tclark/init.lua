require("tclark.remap")
require("tclark.set")

--Transparent background
vim.g.moonflyTransparent = true
local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "moonfly",
    callback = function()
        vim.api.nvim_set_hl(0, "@string.xml", { fg = "#4f6fd0", bold = false })
        vim.api.nvim_set_hl(0, "@tag.attribute.xml", { fg = "#bfcfff", bold = false })
        vim.api.nvim_set_hl(0, "@tag.xml", { fg = "#fafada", bold = false })
    end,
    group = custom_highlight,
})
require 'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
}

--color for comments
--vim.cmd [[hi @comment guifg=green]]

if vim.g.vscode then
else
    -- spell check
    vim.cmd('set spell spelllang=en_us')
end

vim.g.netrw_sort_sequence = "[\\/]$,^\\.,\\.java$,\\.ps1$,\\.bat$,\\.class$,\\.bak$,\\.o$,\\.h$,\\.info$,\\.swp$,\\.obj$"
