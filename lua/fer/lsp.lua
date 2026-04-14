vim.lsp.enable({ 'luals', 'clangd', 'asm-lsp', 'rust_analyzer', 'vls' })

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
