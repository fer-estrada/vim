vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('fer.lazy_init')
require('fer.opts')
require('fer.remap')
require('fer.lsp')

if not vim.g.__hover_wrapped then
    local orig_hover = vim.lsp.buf.hover
    vim.lsp.buf.hover = function(opts)
        opts = opts or {}
        opts.border = opts.border or "rounded"
        opts.winhighlight = "Normal:HoverNormal,FloatBorder:HoverBorder,NormalFloat:HoverNormal"
        orig_hover(opts)
    end
    vim.g.__hover_wrapped = true
end

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
