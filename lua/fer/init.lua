local g = vim.g
local api = vim.api
local cmd = vim.cmd
local autocmd = api.nvim_create_autocmd
local augroup = api.nvim_create_augroup

g.mapleader = ' '
g.maplocalleader = ' '

require('fer.lazy_init')

augroup('fer_or', { clear = true })

autocmd("ColorScheme", {
    callback = function()
        package.loaded['fer.highlights'] = nil
        require('fer.highlights')
    end,
})

require('fer.opts')
cmd(':colo quiet')
require('fer.highlights')
require('fer.remap')
require('fer.lsp')

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
