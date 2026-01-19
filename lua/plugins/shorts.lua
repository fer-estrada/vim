return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        },
    },
    {
        'numToStr/Comment.nvim',
        opts = {},
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {},
    },
    {
        'nacro90/numb.nvim',
        config = function()
            require('numb').setup()
        end,
    },
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
        end,
    },
}
