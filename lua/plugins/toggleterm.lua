--NOTE: Plugin para manejo de terminales
--https://github.com/akinsho/toggleterm.nvim
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 20
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<c-\>]],
    hide_numbers = false,
    shade_filetypes = {},
    shade_terminals = false,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    persist_mode = true,
    close_on_exit = true,
    float_opts = {
      border = "curved",
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  },
}
