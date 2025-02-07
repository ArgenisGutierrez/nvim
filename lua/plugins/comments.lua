--Comentar automaticamente lineas de cofigo https://github.com/numToStr/Comment.nvim
return {
  'numToStr/Comment.nvim',
  config = true,
  keys = {
    {"gcc", mode = "n"},
    {"gbc", mode = "n"},
    {"gcO", mode = "n"},
    {"gco", mode = "n"},
    {"gcA", mode = "n"},
    {"gc", mode = "n"},
    {"gb", mode = "n"},
  },
  opts = {
    padding = true,
    sticky = true,
    ignore = nil,
    toggler = {
      line = 'gcc',
      block = 'gbc',
    },
    opleader = {
      line = 'gc',
      block = 'gb',
    },
    extra = {
      above = 'gcO',
      below = 'gco',
      eol = 'gcA',
    },
    mappings = {
      basic = true,
      extra = true,
    },
    pre_hook = nil,
    post_hook = nil,
  },
}
