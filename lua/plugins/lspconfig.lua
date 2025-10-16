local enable = vim.lsp.enable
local config = vim.lsp.config
local diagnostic = vim.diagnostic.config

return {
    'neovim/nvim-lspconfig',
    config = function()
        enable({'lua_ls', 'clangd', 'marksman', 'pyright', 'astro', 'ts_ls'})

        config('lua_ls', {
            settings = { Lua = { diagnostics = { globals = { 'vim', 'CursorHold', 'CursorHoldI' } } } }
        })

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
