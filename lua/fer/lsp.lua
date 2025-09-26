vim.lsp.enable({'lua_ls', 'clangd', 'marksman', 'python-lsp-server'})

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
