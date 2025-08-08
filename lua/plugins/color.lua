return {
    'pbrisbin/vim-colors-off',
    priority = 1000,
    config = function()
        vim.o.background = 'dark'
        vim.cmd[[colo off]]
    end,
}
