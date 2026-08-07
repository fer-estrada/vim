return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>Ga", "<cmd>Git add .<CR>")
        vim.keymap.set("n", "<leader>Gm", "<cmd>Git commit<CR>")
        vim.keymap.set("n", "<leader>Gs", "<cmd>Git status<CR>")
    end,
}
