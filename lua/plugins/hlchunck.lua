return {
  'shellRaining/hlchunk.nvim',
  config = function()
    require('hlchunk').setup({
      chunk = {
        enable = true,
        chars = {
          horizontal_line = "─",
          vertical_line = "│",
          left_top = "╭",
          left_bottom = "╰",
          right_arrow = ">",
        },
        style = "#3fa6ff",
      },
      indent = {
        enable = true,
        chars = {
          "│",
        },
        style = {
          vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
        },
      },
      line_num = {
        enable = true,
        style = "#3fa6ff",
      },
    })
  end
}
