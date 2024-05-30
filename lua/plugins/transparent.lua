-- Ventanas transparentes https://github.com/xiyaowong/transparent.nvim
return {
  'xiyaowong/transparent.nvim',
  opts = {
    extra_groups = {
      "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal" -- NvimTree
    }
  }
}
