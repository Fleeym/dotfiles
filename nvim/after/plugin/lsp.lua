local lsp = require('lsp-zero').preset({})

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
        lsp.default_setup
    }
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

lsp.format_on_save({
    format_opts = {
        async = false,
        timeout_ms = 10000,
    },
    servers = {
        ['lua_ls'] = { 'lua' },
        ['null-ls'] = { 'javascript', 'typescript', 'php', 'css', 'scss' },
    }
})

require('lspconfig').lua_ls.setup({
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            }
        }
    }
})

lsp.setup()

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        require("none-ls.diagnostics.eslint_d"),
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
