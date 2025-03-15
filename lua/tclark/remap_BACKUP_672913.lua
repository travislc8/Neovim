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
vim.keymap.set("n", "<leader>ww", "<cmd>noautocmd w<CR>")

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
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

--Quick fix
vim.keymap.set("n", "<leader>fj", "<cmd>cnext<CR>")
vim.keymap.set("n", "<leader>fk", "<cmd>cprev<CR>")
vim.keymap.set("n", "<leader>fo", "<cmd>copen<CR>")
vim.keymap.set("n", "<leader>fq", "<cmd>cclose<CR>")

--Replace
vim.keymap.set("n", "<leader>fs", "ggVG:s/")

--mark navigation
vim.keymap.set("n", "<leader>m", "`")
vim.keymap.set("n", "<leader>M", "'")

-- prevents paste overwriting buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("x", "<leader>P", "\"_dp")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- device copy buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y")

<<<<<<< HEAD
=======
-- spell
vim.keymap.set("n", "<leader>sc", "mc[sz=")

>>>>>>> 4fb0db8 (Added spell check command <leader>sc)
local cmp = require('cmp')

--lsp key mappings
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- confirm completion
        ['<enter>'] = cmp.mapping.confirm({ select = true }),
    }),
})
