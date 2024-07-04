local lsp = require('lspconfig')

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'tsserver',
        'eslint',
        'intelephense',
        'lua_ls',
        'rust_analyzer'
    },
    handlers = {
        function(server_name)
            lsp[server_name].setup {}
        end
    }
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.diagnostics.phpstan,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.formatting.pint
    },
})

require("mason-null-ls").setup({
    automatic_installation = true,
    ensure_installed = {
        "pint",
        "prettierd",
        "phpstan"
    }
})
