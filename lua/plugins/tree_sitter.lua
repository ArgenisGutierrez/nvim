return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      -- Comenta playground si no lo usas:
      -- "nvim-treesitter/playground",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "query"
        },
        auto_install = false,  -- Importante!
        highlight = { 
          enable = true,
          additional_vim_regex_highlighting = false,
          disable = { "markdown" }  -- Desactiva para markdown si es problemático
        },
        indent = { enable = false },  -- Desactiva indentación experimental
      })

      -- Elimina la configuración de folding o usa manual
      vim.opt.foldmethod = "manual"
      vim.opt.foldenable = false
    end,
  },
}
