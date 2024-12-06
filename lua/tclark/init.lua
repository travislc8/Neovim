require("tclark.remap")
require("tclark.set")

--Transparent background
vim.g.moonflyTransparent = true

require 'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
}
-- changing comment color
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "moonfly",
    callback = function()
        vim.api.nvim_set_hl(0, "Comment", { fg = "#137600", bold = false })
    end,
    group = custom_highlight,
})

--color for comments
vim.cmd [[hi @comment guifg=green]]

-- spell check
vim.cmd('set spell spelllang=en_us')
