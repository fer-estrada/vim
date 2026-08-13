vim.diagnostic.config({
    virtual_text = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data_client_id)
        if client ~= nil and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end
})

vim.cmd("set completeopt+=noselect")

vim.lsp.enable({ "lua_ls", "clangd", "asm_lsp", "ts_ls", "rust_analyzer", "gopls", "vls" })
