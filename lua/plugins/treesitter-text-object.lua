-- nvim-treesitter-textobjects
return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("nvim-treesitter.configs").setup({
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer", -- Seleccionar una función completa
            ["if"] = "@function.inner", -- Seleccionar el cuerpo de una función
            ["ac"] = "@class.outer", -- Seleccionar una clase completa
            ["ic"] = "@class.inner", -- Seleccionar el cuerpo de una clase
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer", -- Ir al inicio de la siguiente función
            ["]]"] = "@class.outer", -- Ir al inicio de la siguiente clase
          },
          goto_next_end = {
            ["]M"] = "@function.outer", -- Ir al final de la siguiente función
            ["]["] = "@class.outer", -- Ir al final de la siguiente clase
          },
          goto_previous_start = {
            ["[m"] = "@function.outer", -- Ir al inicio de la función anterior
            ["[["] = "@class.outer", -- Ir al inicio de la clase anterior
          },
          goto_previous_end = {
            ["[M"] = "@function.outer", -- Ir al final de la función anterior
            ["[]"] = "@class.outer", -- Ir al final de la clase anterior
          },
        },
      },
    })
  end,
}
