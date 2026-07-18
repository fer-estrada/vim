vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('fer.lazy_init')
require('fer.opts')
require('fer.highlights')
require('fer.remap')
require('fer.lsp')

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
