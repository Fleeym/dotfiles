return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        dependencies = { { 'nvim-lua/plenary.nvim' } }
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate"
    },
    { 'mbbill/undotree' },
    { 'tpope/vim-fugitive' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = "v3.x",
        lazy = true,
        config = false,
        dependencies = {
            { "neovim/nvim-lspconfig" },
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "rafamadriz/friendly-snippets" },
            { "L3MON4D3/LuaSnip" }
        }
    },
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' }
        }
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' }
        }
    },
    {
        "windwp/nvim-autopairs",
        dependencies = {
            { "hrsh7th/nvim-cmp" }
        },
        config = function()
            require("nvim-autopairs").setup {}
            local cmp_autopairs = require('nvim-autopairs.completion.cmp')
            local cmp = require('cmp')
            cmp.event:on(
                "confirm_done",
                cmp_autopairs.on_confirm_done()
            )
        end
    },
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },
    {
        "nvimtools/none-ls.nvim",
        dependencies = { { "nvim-lua/plenary.nvim" } }
    },
    {
        'jay-babu/mason-null-ls.nvim',
        dependencies = {
            "nvimtools/none-ls-extras.nvim"
        }
    },
    { 'lukas-reineke/indent-blankline.nvim' },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" }
        }
    },
    {
        'nvimdev/lspsaga.nvim',
        dependencies = {
            { 'nvim-treesitter/nvim-treesitter' },
            { 'nvim-tree/nvim-web-devicons' }
        }
    },
    { "ellisonleao/gruvbox.nvim",           priority = 1000, config = true, opts = ... }
}
