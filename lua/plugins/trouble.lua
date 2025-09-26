return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle<cr>",
    },
    {
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    },
    {
      "<leader>xL",
      "<cmd>Trouble loclist toggle<cr>",
    },
    {
      "<leader>xQ",
      "<cmd>Trouble qflist toggle<cr>",
    },
  },
}
