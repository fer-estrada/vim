local g = vim.g
local api = vim.api
local cmd = vim.cmd
local autocmd = api.nvim_create_autocmd
local augroup = api.nvim_create_augroup

g.mapleader = ' '
g.maplocalleader = ' '

require('fer.lazy_init')

augroup('fer_or', { clear = true })

autocmd("FileType", {
    group = 'fer_or',
    callback = function()
        require('fer.opts')
    end
})

autocmd({ "ColorScheme", "User" }, {
    pattern = { "*", "LazyRender" },
    group = 'fer_or',
    callback = function()
        cmd(":hi statusline guifg=white guibg=NONE")
    end,
})

require('fer.opts')
require('fer.remap')

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
