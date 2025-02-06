return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate", -- Actualiza automáticamente los parsers
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects", -- Soporte para objetos de texto
      "nvim-treesitter/playground",                  -- Depuración y visualización del árbol sintáctico
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
        },
        auto_install = true,        -- Instala automáticamente nuevos parsers
        highlight = { enable = true, additional_vim_regex_highlighting = false },
        indent = { enable = true }, -- Indentación basada en Treesitter
        incremental_selection = {   -- Mejora la selección de bloques de código
          enable = true,
          keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            scope_incremental = "<S-CR>",
            node_decremental = "<BS>",
          },
        },
        textobjects = { -- Mejora la selección y navegación de texto
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              ["]f"] = "@function.outer",
              ["]c"] = "@class.outer",
            },
            goto_previous_start = {
              ["[f"] = "@function.outer",
              ["[c"] = "@class.outer",
            },
          },
        },
      })

      -- Configurar Treesitter como plegado por defecto
      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
      vim.opt.foldenable = false -- Desactiva el plegado al abrir archivos
    end,
  },
}
