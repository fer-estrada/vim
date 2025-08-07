return {
    'folke/trouble.nvim',
    opts = {},
    cmd = 'Trouble',
    keys = {
        { '<leader>xx', '<cmd>Trouble diagnostics toggle<CR>' },
        { '<leader>xX', '<cmd>Trouble diagnostics toggle filter.buf=0<CR>' },
        { '<leader>xL', '<cmd>Trouble loclist toggle<CR>' },
        { '<leader>xQ', '<cmd>Trouble qflist toggle<CR>' },
        { '<leader>cs', '<cmd>Trouble symbols toggle focus=false<CR>' },
        { '<leader>cl', '<cmd>Trouble lsp toggle focus=false win.position=right<CR>' },
    },
}
