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
          "query",
        },
        auto_install = false, -- Importante!
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
          -- disable = function(lang, buf)
          -- 	local max_lines = 1000
          -- 	local line_count = vim.api.nvim_buf_line_count(buf)
          -- 	return line_count > max_lines
          -- end,
        },
        indent = { enable = false }, -- Desactiva indentación experimental
      })

      -- Elimina la configuración de folding o usa manual
      vim.opt.foldmethod = "manual"
      vim.opt.foldenable = false
    end,
  },
}
