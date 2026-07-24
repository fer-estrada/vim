vim.lsp.enable({ 'luals', 'clangd', 'asm-lsp', 'rust_analyzer', 'vls', 'ts_ls' })

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)

        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    end
})

vim.diagnostic.config({
    underline = false,
    virtual_text = true,
    virtual_lines = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '●',
            [vim.diagnostic.severity.WARN]  = '●',
            [vim.diagnostic.severity.INFO]  = '●',
            [vim.diagnostic.severity.HINT]  = '●',
        },
    },
    float = {
        border = 'rounded',
        source = true,
    },
    severity_sort = false,
})
