vim.keymap.set("n", "<C-s>", vim.cmd.w)
vim.keymap.set("n", "<leader>Q", vim.cmd.q)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set({ "n", "v" }, "Y", [["+y]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- nvim config keybinds
vim.keymap.set("n", "<leader><leader>s", vim.cmd.source)
vim.keymap.set("n", "<leader><leader>r", vim.cmd.restart)
