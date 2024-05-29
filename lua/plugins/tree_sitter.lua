-- Resaltado de syntaxis de lenguajes https://github.com/nvim-treesitter/nvim-treesitter
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = 'VeryLazy',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "markdown",
      "markdown_inline",
      "javascript",
      "typescript",
      "php",
      "css",
      "html",
      "pug",
      "http",
      "json",
      "regex",
      "dockerfile",
      "vimdoc" },
    highlight = {
      enable = true,
    },
    ident = {
      enable = true,
    },
  }
}
