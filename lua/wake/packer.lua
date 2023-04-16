-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Rose Pine
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    vim.cmd('colorscheme rose-pine')

    -- Troube
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- Harpoon
    use('theprimeagen/harpoon')

    -- Undotree
    use('mbbill/undotree')

    -- Fugitive
    use('tpope/vim-fugitive')

    -- LSP Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletionpackpackpack
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- Refactoring

    use("theprimeagen/refactoring.nvim")

    -- Rust Tools
    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    --   debugging
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'


    -- Zen mode
    use("folke/zen-mode.nvim")

    -- Github Copilot
    -- use("github/copilot.vim")

    -- Cellular automaton
    use("eandrju/cellular-automaton.nvim")

    -- Cloak
    use("laytan/cloak.nvim")

    -- Coq
    use { "ms-jpq/coq_nvim", branch = 'coq' }
    use { "ms-jpq/coq.artifacts", branch = 'artifacts' }
    use { "ms-jpq/coq.thirdparty", branch = '3p' }

    -- NVim Tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }
    -- Barbecue
    use({
        "utilyre/barbecue.nvim",
        tag = "*",
        requires = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        after = "nvim-web-devicons",       -- keep this if you're using NvChad
        config = function()
            require("barbecue").setup()
        end,
    })
    -- Alpha Vim
    use {
        'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    }
    -- Crates
    use {
        'saecki/crates.nvim',
        tag = 'v0.3.0',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function()
            require('crates').setup()
        end,
    }
    -- Null LS
    use('jose-elias-alvarez/null-ls.nvim')
    -- Vim Markdown
    use('godlygeek/tabular')
    use('preservim/vim-markdown')
end)
