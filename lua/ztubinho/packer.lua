vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
        -- Packer can manage itself
        use ('wbthomason/packer.nvim')

        use {
                'nvim-telescope/telescope.nvim', tag = '0.1.2',
                -- or                            , branch = '0.1.x',
                requires = { {'nvim-lua/plenary.nvim'} }
        }

        use 'rktjmp/lush.nvim' -- para algumas waifus funcionarem
        -- waifus
        use 'numToStr/Sakura.nvim'
        use 'nocksock/bloOp.nvim'
        use 'Scysta/pink-panic.nvim'
        use 'sainnhe/everforest'
        use { "catppuccin/nvim", as = "catppuccin" }
        use {
                'daltonmenezes/aura-theme',
                rtp = 'packages/neovim',
        }

        use ('ThePrimeagen/harpoon')
        use ('mbbill/undotree')
        use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
        use ({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
        use ('echasnovski/mini.nvim')
        use ('tpope/vim-fugitive')
        use ('tpope/vim-surround')
        use ('norcalli/nvim-colorizer.lua')
        use ('nvim-treesitter/nvim-treesitter-context')
        use ('alvan/vim-closetag')
        use ('eandrju/cellular-automaton.nvim')

        use {
                'VonHeikemen/lsp-zero.nvim',
                branch = 'v1.x',
                requires = {
                        -- LSP Support
                        {'neovim/nvim-lspconfig'},
                        {'williamboman/mason.nvim'},
                        {'williamboman/mason-lspconfig.nvim'},

                        -- Autocompletion
                        {'hrsh7th/nvim-cmp'},
                        {'hrsh7th/cmp-buffer'},
                        {'hrsh7th/cmp-path'},
                        {'saadparwaiz1/cmp_luasnip'},
                        {'hrsh7th/cmp-nvim-lsp'},
                        {'hrsh7th/cmp-nvim-lua'},

                        -- Snippets
                        {'L3MON4D3/LuaSnip'},
                        {'rafamadriz/friendly-snippets'},
                }
        }
end)
