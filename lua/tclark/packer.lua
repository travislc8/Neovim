-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--lua\tclark\packer.lua

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --use({
    --'rose-pine/neovim',
    --as = 'rose-pine' ,
    --config = function()
    --  vim.cmd('colorscheme rose-pine')
    --   end
    --})

    use({
        'bluz71/vim-moonfly-colors',
        as = 'moonfly',
        config = function()
            vim.cmd [[colorscheme moonfly]]
        end
    })

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('nvim-treesitter/playground')
    use "nvim-lua/plenary.nvim"
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { { "nvim-lua/plenary.nvim" } }
    }

    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use 'mfussenegger/nvim-dap'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }

    use {
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    }
    use('neovim/nvim-lspconfig')
    use( 'hrsh7th/cmp-nvim-lsp')
    use( 'hrsh7th/cmp-buffer')
    use( 'hrsh7th/cmp-path')
    use( 'hrsh7th/cmp-cmdline')
    use( 'hrsh7th/nvim-cmp')
    use( 'hrsh7th/cmp-vsnip')
    use( 'hrsh7th/vim-vsnip')
    --use('mason-org/mason-lspconfig.nvim')
    --use { 'williamboman/mason.nvim' }
    --use { 'williamboman/mason-lspconfig.nvim' }
    -- Autocompleti
    --use { 'hrsh7th/nvim-cmp' }
    --use { 'hrsh7th/cmp-nvim-lsp' }
    --use { 'L3MON4D3/LuaSnip' }
end)
