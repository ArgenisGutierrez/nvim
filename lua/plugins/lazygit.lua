-- UI para git https://github.com/folke/lazy.nvim
return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").load_extension("lazygit")

    local wk = require('which-key')
    wk.add({
      { "<leader>g", group = "󰊢 Git" },
      { "<leader>gg", "<cmd>:LazyGit<cr>", desc = " LazyGit", mode = "n" }
    })
  end,
}
