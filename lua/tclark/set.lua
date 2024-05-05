-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

--indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

--vim.opt.swapfile = false
--vim.opt.backup = false
--vim.opt.undofile = true
--vim.opt.undodir = os.getenv("HOME") .. "/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

--keeps lines showing below cursor
vim.opt.scrolloff = 10
vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "
