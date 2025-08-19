vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pr", "<cmd>!pwsh ./run.ps1<CR>")

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

-- tabs
vim.keymap.set("n", "<C-t>n", ":tabnew<CR>")
vim.keymap.set("n", "<C-t>h", ":tabnext<CR>")
vim.keymap.set("n", "<C-t>l", ":tabprevious<CR>")
vim.keymap.set("n", "<C-t>1", ":tabn 1<CR>")
vim.keymap.set("n", "<C-t>2", ":tabn 2<CR>")
vim.keymap.set("n", "<C-t>3", ":tabn 3<CR>")
vim.keymap.set("n", "<C-t>4", ":tabn 4<CR>")
vim.keymap.set("n", "<C-t>5", ":tabn 5<CR>")
vim.keymap.set("n", "<C-t>6", ":tabn 6<CR>")
vim.keymap.set("n", "<C-t>7", ":tabn 7<CR>")
vim.keymap.set("n", "<C-t>8", ":tabn 8<CR>")
vim.keymap.set("n", "<C-t>9", ":tabn 9<CR>")
vim.keymap.set("t", "<C-t>1", "<C-\\><C-n>:tabn 1<CR>")
vim.keymap.set("t", "<C-t>2", "<C-\\><C-n>:tabn 2<CR>")
vim.keymap.set("t", "<C-t>3", "<C-\\><C-n>:tabn 3<CR>")
vim.keymap.set("t", "<C-t>4", "<C-\\><C-n>:tabn 4<CR>")
vim.keymap.set("t", "<C-t>5", "<C-\\><C-n>:tabn 5<CR>")
vim.keymap.set("t", "<C-t>6", "<C-\\><C-n>:tabn 6<CR>")
vim.keymap.set("t", "<C-t>7", "<C-\\><C-n>:tabn 7<CR>")
vim.keymap.set("t", "<C-t>8", "<C-\\><C-n>:tabn 8<CR>")
vim.keymap.set("t", "<C-t>9", "<C-\\><C-n>:tabn 9<CR>")

-- terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

-- spell
vim.keymap.set("n", "<leader>sc", "mc[sz=")
-- debug
vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<leader>bo", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<leader>bi", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F11>", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<leader>bb", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>bB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<leader>lp", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<leader>dr", ":lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<leader>dl", ":lua require('dap').run_last()<CR>")
vim.keymap.set("n", "<leader>dc", ":lua require('dap').close()<CR> :lua require('dapui').close()<CR>")
