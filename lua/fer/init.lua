vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('fer.lazy_init')

vim.api.nvim_create_augroup('fer_or', { clear = true })
local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
    group = 'fer_or',
    callback = function()
        vim.opt.shiftwidth = 4
        vim.opt.tabstop = 4
        vim.opt.softtabstop = 4
        vim.opt.expandtab = true
    end
})

require('fer.opts')
require('fer.remap')
require('fer.lsp')

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
