return {
    'laytan/cloak.nvim',
    config = function()
        require('cloak').setup({
            enabled = true,
            cloak_character = 'e',
            cloak_length = 8,
            cloak_telescope = true,
            patterns = {
                {
                    file_pattern = '.env*',
                    cloak_pattern = '=.*',
                    replace = nil,
                },
            },
        })
    end,
    keys = {
        { '<leader>C', '<cmd>CloakToggle<CR>' },
    },
}
