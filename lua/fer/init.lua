local g = vim.g
local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd
local set_hl = vim.api.nvim_set_hl

g.mapleader = ' '
g.maplocalleader = ' '

require('fer.lazy_init')
require('fer.opts')

autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        set_hl(0, "Normal", { bg = "none" })
        set_hl(0, "NormalFloat", { bg = "none" })
        set_hl(0, "NormalNC", { bg = "none" })
        set_hl(0, "SignColumn", { bg = "none" })
        set_hl(0, "EndOfBuffer", { bg = "none" })
    end,
})

cmd(":hi statusline guifg=white guibg=NONE")
require('fer.remap')
require('fer.lsp')

g.netrw_browse_split = 0
g.netrw_banner = 0
g.netrw_winsize = 25
