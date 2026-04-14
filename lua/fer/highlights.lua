local cmd = vim.cmd

cmd(":hi statusline guifg=white guibg=NONE")
cmd(":highlight Normal guibg=#FFFFFF guifg=#000000")
cmd(":highlight NormalFloat guibg=#FFFFFF guifg=#000000")
cmd(":highlight LineNr guifg=#000000 guibg=#FFFFFF")
cmd(":highlight CursorLineNr guifg=#000000 guibg=#FFFFFF")
cmd(":highlight CursorLine guibg=#EEEECC")
cmd(":highlight Cursor guibg=#FFFFFF guifg=#000000")
cmd(":set termguicolors")
