-- Resaltado de syntaxis de lenguajes https://github.com/nvim-treesitter/nvim-treesitter
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = "VeryLazy",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  -- main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "javascript",
      "typescript",
      "tsx",
      "php",
      "css",
      "html",
      "pug",
      "http",
      "json",
      "regex",
      "dockerfile",
      "vimdoc",
    },
    highlight = {
      enable = true,
    },
    ident = {
      enable = true,
    },
    fold = {
      enable = true,
    },
  },
}
