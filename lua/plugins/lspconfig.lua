return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({'lua_ls', 'clangd', 'marksman', 'pyright'})

        vim.diagnostic.config({
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
