vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("option")
require("keybind")
require("lazy-nvim")
require("lsp")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "None", fg = "white" })

-- for later use with status line
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        local root = vim.fn.system("git rev-parse --show-toplevel 2>/dev/null"):gsub("%s+$", "")
        if root ~= "" then
            vim.b.git_branch = vim.fn.system("git branch --show-current 2>/dev/null"):gsub("%s+$", "")
            vim.b.rel_path = vim.fn.expand("%:p"):sub(#root + 2)
        else
            vim.b.git_branch = nil
            vim.b.rel_path = vim.fn.expand("%:p:~")
        end
    end
})

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({ timeout = 200, visual = true })
    end
})

vim.keymap.set("n", "<leader>d", function() vim.diagnostic.setqflist() vim.cmd("copen") end, { silent = true })
