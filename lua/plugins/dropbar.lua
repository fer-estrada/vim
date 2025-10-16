return {
    'Bekaboo/dropbar.nvim',
    config = function()
        local dropbar_api = require('dropbar.api')
        vim.keymap.set('n', '<leader>;', dropbar_api.pick)
        vim.keymap.set('n', '[;', dropbar_api.goto_context_start)
        vim.keymap.set('n', '];', dropbar_api.select_next_context)
    end
}
