return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            backdrop = 1,
        },
    },
    config = function()
        vim.keymap.set('n', '<leader>zm', '<cmd>ZenMode<cr>')
    end,
}
