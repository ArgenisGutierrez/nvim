-- Plugin de peticiones http https://github.com/rest-nvim/rest.nvim
return {
  "rodrigoscc/http.nvim",
  keys = {
    { "<leader>rr", "<cmd>Http run_closest<cr>", desc = " Run request under cursor", mode = "n" },
    { "<leader>rh", "<cmd>Http open_hooks<cr>", desc = "󰛢 Open project hooks file", mode = "n" },
    { "<leader>rl", "<cmd>Http run_last<cr>", desc = " Run last request", mode = "n" },
    { "<leader>rc", "<cmd>Http create_env<cr>", desc = " Create new project environment", mode = "n" },
    { "<leader>rs", "<cmd>Http select_env<cr>", desc = " Select project environment", mode = "n" },
    { "<leader>ro", "<cmd>Http open_env<cr>", desc = " Open active project environment file", mode = "n" },
    { "<leader>ri", "<cmd>Http inspect<cr>", desc = " Inspect variable under cursor", mode = "n" },
  },
  config = function()
    require("http-nvim").setup({
      win_config = { split = "right" },
    })
  end,
  build = { ":TSUpdate http2", ":Http update_grammar_queries" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- optional: uses it as picker
    "ibhagwan/fzf-lua",            -- optional: uses it as picker
    "folke/snacks.nvim",           -- optional: uses it as picker
  },
}
