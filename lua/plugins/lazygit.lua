--NOTE: Manjador de plugins
--https://github.com/folke/lazy.nvim
return {
  "kdheepak/lazygit.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("telescope").load_extension("lazygit")
  end,

}
