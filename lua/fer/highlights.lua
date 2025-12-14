local cmd = vim.cmd

cmd(":hi statusline guifg=black guibg=NONE")
cmd(":highlight Normal guibg=#F5F5DC guifg=#000000")
cmd(":highlight NormalFloat guibg=#F5F5DC guifg=#000000")
cmd(":highlight LineNr guifg=#000000 guibg=#F5F5DC")
cmd(":highlight CursorLineNr guifg=#000000 guibg=#F5F5DC")
cmd(":highlight CursorLine guibg=#EEEECC")
cmd(":highlight Cursor guibg=#000000 guifg=#F5F5DC")
cmd(":set termguicolors")
