return {
    'ajmwagar/vim-deus',
    priority = 1000,
    config = function()
        vim.o.background = 'dark'
        vim.cmd[[colo deus]]
    end,
}
