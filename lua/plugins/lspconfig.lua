local enable = vim.lsp.enable
local diagnostic = vim.diagnostic.config

return {
    'neovim/nvim-lspconfig',
    config = function()
        enable({'lua_ls', 'clangd', 'marksman', 'pyright'})

        diagnostic({
            virtual_text = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
            float = {
                border = 'rounded',
                source = true,
            },
        })
    end,
}
