local key = vim.keymap.set

key("n", "<leader>pv", vim.cmd.Ex)
key("n", "<C-s>", "<cmd>w<CR>")
key("n", "<leader>Q", "<cmd>q<CR>")

key("v", "Y", [["+y]])

key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

key("n", "n", "nzzzv")
key("n", "N", "Nzzv")
