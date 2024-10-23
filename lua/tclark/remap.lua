vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--window control
vim.keymap.set("n", "<leader>wn", "<C-w>n")
vim.keymap.set("n", "<leader>wm", "<C-w>v")
vim.keymap.set("n", "<leader>wl", "<C-w>l")
vim.keymap.set("n", "<leader>wh", "<C-w>h")
vim.keymap.set("n", "<leader>wj", "<C-w>j")
vim.keymap.set("n", "<leader>wk", "<C-w>k")
vim.keymap.set("n", "<leader>wq", "<C-w>q")

vim.keymap.set("n", "<leader>wH", "<C-w>H")
vim.keymap.set("n", "<leader>wJ", "<C-w>J")
vim.keymap.set("n", "<leader>wK", "<C-w>K")
vim.keymap.set("n", "<leader>wL", "<C-w>L")

-- movable blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>w=", "<C-w>=")
vim.keymap.set("n", "<leader>w<", "<C-w>30<")
vim.keymap.set("n", "<leader>w>", "<C-w>30>")

--Navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- prevents paste overwriting buffer
vim.keymap.set("x", "<leader>p", "\"_dp")
vim.keymap.set("x", "<leader>P", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- device copy buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

local cmp = require('cmp')

--lsp keymappings
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- confirm completion
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),
})

