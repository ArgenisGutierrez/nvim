-- Plugin para Terminal Integrada
-- https://github.com/akinsho/toggleterm.nvim
return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<C-\\>", mode = { "n", "i" }, desc = "Toggle Terminal" },
  },
  config = function()
    -- Configuración óptima para ToggleTerm.nvim
    require("toggleterm").setup({
      -- Define el tamaño de la terminal de forma dinámica según su dirección
      size = function(term)
        if term.direction == "horizontal" then
          return 15                         -- 15 líneas para terminales horizontales
        elseif term.direction == "vertical" then
          return math.floor(vim.o.columns * 0.4) -- 40% de las columnas para terminales verticales
        else
          return 20                         -- tamaño por defecto para otras direcciones (por ejemplo, "float")
        end
      end,
      open_mapping = [[<c-\>]],  -- Abre o cierra el terminal con Control + "\"
      hide_numbers = true,       -- Oculta la numeración en la ventana terminal
      shade_terminals = true,    -- Habilita sombreado (para diferenciar el terminal del resto de la UI)
      shading_factor = 0,        -- Factor de sombreado (0 = sin sombreado; 1-3, de más a menos opaco)
      start_in_insert = true,    -- Comienza en modo insert para mayor comodidad
      insert_mappings = true,    -- Permite que el mapeo de toggle funcione también en modo insert
      persist_size = true,       -- Mantiene el tamaño definido entre aperturas
      direction = "float",       -- Abre la terminal en ventana flotante por defecto (puedes cambiar a "horizontal" o "vertical")
      close_on_exit = true,      -- Cierra automáticamente la terminal cuando se termina el proceso
      shell = vim.o.shell,       -- Utiliza el shell configurado en Neovim
      float_opts = {             -- Opciones específicas para la ventana flotante
        border = "rounded",      -- Borde redondeado
        winblend = 0,            -- Nivel de transparencia (0 = opaco, valores mayores para mayor transparencia)
        highlights = {
          border = "NormalFloat", -- Grupo de highlight para el borde
          background = "NormalFloat", -- Grupo de highlight para el fondo
        },
      },
    })
  end,
}
