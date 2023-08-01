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
        "markdown",
        "markdown_inline"
    },
    indent = {
        enable = true,
        disable = {}
    },
    autotag = {
        enable = true,
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
