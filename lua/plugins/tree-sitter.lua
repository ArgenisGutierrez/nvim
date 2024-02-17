--tree-sitter Resaltado de syntaxis de lenguajes
return {
  'nvim-treesitter/nvim-treesitter',
  -- dependencies = 'nvim-treesitter/nvim-treesitter-textobjects',
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
