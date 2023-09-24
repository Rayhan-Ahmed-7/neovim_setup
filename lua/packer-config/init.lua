return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use "EdenEast/nightfox.nvim"
    use 'nvim-tree/nvim-tree.lua'
    use 'rcarriga/nvim-notify'
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer' -- To install language servers
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'NvChad/nvim-colorizer.lua'
    use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
    use {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
    }
    })
    end)

