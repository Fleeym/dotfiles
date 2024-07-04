require 'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        'html',
        'css',
        'scss',
        'json',
        "lua",
        "vim",
        "vimdoc",
        "php",
        "rust",
        "markdown",
        "markdown_inline"
    },
    indent = {
        enable = true,
        disable = {}
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
