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
    local opts = {
    mode = "n",
    prefix = "<leader>",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
    expr = false,
    }

    wk.register({
  g = {
    name = "󰊢 Git",
    g = { "<cmd>:LazyGit<cr>", " LazyGit" },
  }
}, opts)
  end,
}
