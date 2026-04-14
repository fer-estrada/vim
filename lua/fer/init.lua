local g = vim.g
local cmd = vim.cmd

g.mapleader = ' '
g.maplocalleader = ' '

require('fer.lazy_init')

require('fer.opts')
cmd(':colo quiet')
cmd(":hi statusline guifg=white guibg=NONE")
require('fer.remap')
require('fer.lsp')

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
