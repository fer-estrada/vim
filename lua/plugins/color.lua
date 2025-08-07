return {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
        vim.o.background = 'dark'
        vim.cmd[[colo gruvbox]]
    end,
}
