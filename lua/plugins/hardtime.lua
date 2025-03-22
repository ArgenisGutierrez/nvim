return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    -- Add "oil" to the disabled_filetypes
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
    disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason" },
  },
}
