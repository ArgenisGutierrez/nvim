-- IA para generar sugerencias https://github.com/Exafunction/codeium.nvim?tab=readme-ov-file
return {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
    })
  end
}
