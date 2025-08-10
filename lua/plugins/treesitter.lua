return {
    'nvim-treesitter/nvim-treesitter',
    branch = 'master',
    lazy = false,
    build = ':TSUpdate',
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "disassembly" },
        auto_install = true,
        highlight = {
            enable = false,
            additional_vim_regex_highlighting = false,
        },
    },
}
