vim.diagnostic.config({
    virtual_text = true,
})

vim.lsp.enable({ "lua_ls", "clangd", "asm_lsp", "ts_ls", "rust_analyzer", "gopls", "vls" })
