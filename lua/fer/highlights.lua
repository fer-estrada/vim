local cmd = vim.cmd
local autocmd = vim.api.nvim_create_autocmd
local set_hl = vim.api.nvim_set_hl

autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        set_hl(0, "Normal", { bg = "none" })
        set_hl(0, "NormalFloat", { bg = "none" })
        set_hl(0, "NormalNC", { bg = "none" })
        set_hl(0, "SignColumn", { bg = "none" })
        set_hl(0, "EndOfBuffer", { bg = "none" })
    end,
})

local function mono()
    for _, name in ipairs(vim.fn.getcompletion('', 'highlight')) do
        set_hl(0, name, {
            fg = '#ffffff', bg = 'NONE',
            bold = false, italic = false, underline = false, undercurl = false,
        })
    end

    set_hl(0, 'CursorLine', { bg = '#444444' })
    set_hl(0, 'CursorLineNr', { fg = '#ffffff', bg = '#444444', bold = false })

    set_hl(0, 'Visual', { bg = '#ffffff', fg = '#444444' })
    set_hl(0, 'Search', { bg = '#ffffff', fg = '#444444' })
    set_hl(0, 'IncSearch', { bg = '#ffffff', fg = '#444444' })
end

autocmd({ 'ColorScheme', 'VimEnter', 'LspAttach' }, { callback = mono })
mono()

cmd(":hi statusline guifg=white guibg=NONE")
