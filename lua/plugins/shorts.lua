return {
    {
        'cheap-glitch/vim-v',
        config = function()
        end,
    },
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
        'Bekaboo/dropbar.nvim',
        config = function()
            local dropbar_api = require('dropbar.api')
            vim.keymap.set('n', '<leader>;', dropbar_api.pick)
            vim.keymap.set('n', '[;', dropbar_api.goto_context_start)
            vim.keymap.set('n', '];', dropbar_api.select_next_context)
        end
    }
}
