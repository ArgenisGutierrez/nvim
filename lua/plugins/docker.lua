-- lazydocker integration https://github.com/crnvl96/lazydocker.nvim?tab=readme-ov-file
return {
  "crnvl96/lazydocker.nvim",
  keys = { { "<leader>d", "<Cmd>lua LazyDocker.toggle()<CR>", desc = " LazyDocker", mode = "n" } },
  config = function()
    require("lazydocker").setup({
      window = {
        settings = {
          width = 0.90,   -- Percentage of screen width (0 to 1)
          height = 0.90,  -- Percentage of screen height (0 to 1)
          border = "rounded", -- See ':h nvim_open_win' border options
          relative = "editor", -- See ':h nvim_open_win' relative options
        },
      },
    })
  end,
}
