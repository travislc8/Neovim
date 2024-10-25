require("tclark.remap")
require("tclark.set")

--Transparent background
vim.g.moonflyTransparent = true

require'nvim-treesitter.configs'.setup {
    -- Modules and its options go here
    highlight = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  }
