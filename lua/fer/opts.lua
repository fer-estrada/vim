local opt = vim.o
local cmd = vim.cmd

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

cmd(":colo quiet")
cmd(":hi statusline guifg=white guibg=NONE")
