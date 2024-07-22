--Interfaz grafica para git diff https://github.com/sindrets/diffview.nvim
return {
  'sindrets/diffview.nvim',
  config = function()
    require("diffview").setup({
    })
    -- keymaps
    local wk = require('which-key')
    wk.add({
      { "<leader>g", group = "󰊢 Git" },
      { "<leader>gd", "<cmd>:DiffviewOpen<cr>", desc = " Diff Open", mode = "n" },
      { "<leader>gc", "<cmd>:DiffviewClose<cr>", desc = " Diff Close", mode = "n" },
      { "<leader>gh", "<cmd>:DiffviewFileHistory<cr>", desc = " Git History", mode = "n" }
    })
  end,
}
