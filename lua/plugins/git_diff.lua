--Interfaz grafica para git diff https://github.com/sindrets/diffview.nvim
return {
  'sindrets/diffview.nvim',
  config = function()
    require("diffview").setup({
    })

    -- keymaps
    local wk = require('which-key')
    local opts = {
      mode = "n",     -- NORMAL mode
      prefix = "<leader>",
      buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
      silent = true,  -- use `silent` when creating keymaps
      noremap = true, -- use `noremap` when creating keymaps
      nowait = false, -- use `nowait` when creating keymaps
      expr = false,   -- use `expr` when creating keymaps
    }
    wk.register({
      g = {
        name = "󰊢 Git",
        d = { "<cmd>:DiffviewOpen<cr>", " Diff Open" },
        c = { "<cmd>:DiffviewClose<cr>", " Diff Close" },
        h = { "<cmd>:DiffviewFileHistory<cr>", " Git History" },
      }
    }, opts)
  end,
}
