return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependecies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set("n", "<leader>pf", builtin.find_files)
        vim.keymap.set("n", "<leader>pg", builtin.live_grep)
    end,
}
