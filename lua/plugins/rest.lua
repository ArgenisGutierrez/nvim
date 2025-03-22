-- Plugin de peticiones http https://github.com/rest-nvim/rest.nvim
return {
  "rest-nvim/rest.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  keys = {
    { "<leader>rr", "<cmd>Rest run<cr>", desc = " Rest Run", mode = "n" },
    { "<leader>rl", "<cmd>Rest last<cr>", desc = "󰏗 Rest Last", mode = "n" },
  },
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    table.insert(opts.ensure_installed, "http")
  end,
}
