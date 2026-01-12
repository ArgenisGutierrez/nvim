-- Manejador de GitHub https://github.com/pwntester/octo.nvim
return {
  "pwntester/octo.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>pa", "<cmd>Octo actions<cr>", desc = " Octo Actions", mode = "n" },
    { "<leader>ppl", "<cmd>Octo pr search<cr>", desc = " PR List", mode = "n" },
    { "<leader>ppc", "<cmd>Octo pr create<cr>", desc = " Create PR", mode = "n" },
    { "<leader>pps", "<cmd>Octo pr search involves:@me<cr>", desc = " PR Involves Me", mode = "n" },
    { "<leader>prl", "<cmd>Octo repo list<cr>", desc = " Repo List", mode = "n" },
    { "<leader>prv", "<cmd>Octo repo view<cr>", desc = " Repo View", mode = "n" },
    { "<leader>pil", "<cmd>Octo issue list<cr>", desc = " Issue List", mode = "n" },
    { "<leader>pic", "<cmd>Octo issue create<cr>", desc = " Create Issue", mode = "n" },
    { "<leader>pis", "<cmd>Octo issue search assignee:@me<cr>", desc = " Issue assignees to me", mode = "n" },
  },
  config = function()
    require("octo").setup({})
  end,
}
