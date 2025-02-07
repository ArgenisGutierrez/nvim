--Interfaz grafica para git diff https://github.com/sindrets/diffview.nvim
return {
  "sindrets/diffview.nvim",
  keys = {
    { "<leader>gd", "<cmd>:DiffviewOpen<cr>", desc = " Diff Open", mode = "n" },
    { "<leader>gc", "<cmd>:DiffviewClose<cr>", desc = " Diff Close", mode = "n" },
    { "<leader>gh", "<cmd>:DiffviewFileHistory<cr>", desc = " Git History", mode = "n" },
  },
  opts = {}
}
