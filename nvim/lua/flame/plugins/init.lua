return {
    {
        "nvim-telescope/telescope.nvim",
        branch = '0.1.x',
        dependencies = {
            { 'nvim-lua/plenary.nvim' }
        }
    },
    {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim"
        }
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
        'L3MON4D3/LuaSnip',
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        'rafamadriz/friendly-snippets',
        config = function()
            require('luasnip.loaders.from_vscode').lazy_load()
        end
    },
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
    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {},
        config = function()
            require('ibl').setup()
        end
    },
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
        },
        config = function()
            require('lspsaga').setup({})
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = ...
    },
    {
        'echasnovski/mini.notify',
        version = false,
        config = function()
            require('mini.notify').setup()
        end
    },
    {
        'echasnovski/mini.comment',
        version = false,
        config = function()
            require('mini.comment').setup()
        end
    },
    {
        'echasnovski/mini.cursorword',
        version = false,
        config = function()
            require('mini.cursorword').setup()
        end
    },
    {
        'echasnovski/mini.hipatterns',
        version = false,
        config = function()
            require('mini.hipatterns').setup()
        end
    },
    {
        'echasnovski/mini.pairs',
        version = false,
        config = function()
            require('mini.pairs').setup()
        end
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>",  "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>",  "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>",  "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>",  "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    }
}
