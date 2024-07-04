return {
    -- Undo stuff, not sure if I should use
    { 'mbbill/undotree' },
    -- Git integration
    { 'tpope/vim-fugitive' },
    -- Mason
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    -- File finder / ripgrep / file browser
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
    -- Syntax highlighting
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate"
    },
    -- Snippets
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
    -- LSP
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'williamboman/mason-lspconfig.nvim' }
        }
    },
    -- Completions
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            { 'L3MON4D3/LuaSnip' },
            { 'neovim/nvim-lspconfig' }
        }
    },
    -- Auto close HTML tags
    {
        "windwp/nvim-ts-autotag",
        config = function()
            require("nvim-ts-autotag").setup()
        end
    },
    -- Integration with linters / formatters
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
    -- Indent visuals
    {
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {},
        config = function()
            require('ibl').setup()
        end
    },
    -- I have no idea
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
        end
    },
    -- Bottom bar
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" }
        }
    },
    -- Nice LSP utils like go to definition, doc preview
    {
        'nvimdev/lspsaga.nvim',
        dependencies = {
            { 'nvim-treesitter/nvim-treesitter' },
            { 'nvim-tree/nvim-web-devicons' }
        },
    },
    -- Theme
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        opts = ...
    },
    -- mini.nvim
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
    -- Better integration with tmux
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
