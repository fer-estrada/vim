local opt = vim.o
local cmd = vim.cmd
local set_hl = vim.api.nvim_set_hl

opt.guicursor = ""

opt.nu = true
opt.relativenumber = true
opt.cursorline = true

opt.signcolumn = 'yes'

opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

opt.hlsearch = false
opt.incsearch = true

cmd(':colo quiet')
set_hl(0, "Normal", { bg = "none" })
set_hl(0, "NormalFloat", { bg = "none" })
set_hl(0, "NormalNC", { bg = "none" })
set_hl(0, "SignColumn", { bg = "none" })
set_hl(0, "EndOfBuffer", { bg = "none" })
