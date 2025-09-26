return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.lsp.enable({'lua_ls', 'clangd', 'marksman', 'python-lsp-server'})

        vim.lsp.config('python-lsp-server', {
            settings = {
                pylsp = {
                    plugins = {
                        pylint = { enabled = true, executable = 'pylint' },
                    },
                },
            },
        })

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
