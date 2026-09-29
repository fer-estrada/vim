local key = vim.keymap.set

key("n", "<C-s>", "<cmd>w<CR>")
key("n", "<leader>Q", "<cmd>q<CR>")

key("n", "<leader>pv", vim.cmd.Ex)

key({ "n", "v" }, "Y", [["+y]])

key("n", "<C-d>", "<C-d>zz")
key("n", "<C-u>", "<C-u>zz")
key("n", "n", "nzzzv")
key("n", "N", "Nzzzv")

key("v", "K", ":m '<-2<CR>gv=gv")
key("v", "J", ":m '>+1<CR>gv=gv")

key("n", "<leader>hs", ":split<CR>")
key("n", "<leader>vs", ":vsplit<CR>")
key("n", "<C-h>", "<C-w>h")
key("n", "<C-j>", "<C-w>j")
key("n", "<C-k>", "<C-w>k")
key("n", "<C-l>", "<C-w>l")

-- nvim config keybinds
key("n", "<leader><leader>s", vim.cmd.source)
key("n", "<leader><leader>r", vim.cmd.restart)
