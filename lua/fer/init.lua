local g = vim.g
local api = vim.api
local opt = vim.opt

g.mapleader = ' '
g.maplocalleader = ' '

require('fer.lazy_init')

api.nvim_create_augroup('fer_or', { clear = true })
local autocmd = api.nvim_create_autocmd

autocmd("FileType", {
    group = 'fer_or',
    callback = function()
        opt.shiftwidth = 4
        opt.tabstop = 4
        opt.softtabstop = 4
        opt.expandtab = true
    end
})

require('fer.opts')
require('fer.remap')

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
