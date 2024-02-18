--NOTE: Colorscheme
return {
  'Shatur/neovim-ayu',
  name = "ayu",
  lazy = false,
  priority = 1000,
  config = function()
    require('ayu').setup({
      overrides ={
        LineNr = { fg = '#3fa6ff' },
      }
    })
    vim.cmd([[colorscheme ayu-mirage]])

    --Drop
    vim.api.nvim_set_hl(0, "Drop", { default =true, bg = 'NONE', nocombine=true})
    --Navic highlights definition
    vim.api.nvim_set_hl(0, "NavicIconsFile", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsModule", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsNamespace", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsPackage", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsClass", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsMethod", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsProperty", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsField", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsConstructor", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsEnum", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsInterface", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsFunction", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsVariable", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsConstant", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsString", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsNumber", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsBoolean", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsArray", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsObject", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsKey", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsNull", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsEnumMember", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsStruct", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsEvent", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsOperator", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", { default = true, bg = 'NONE', fg = "#0d688c" })
    vim.api.nvim_set_hl(0, "NavicText", { default = true, bg = 'NONE', fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "NavicSeparator", { default = true, bg = 'NONE', fg = "#f2c572" })
  end,
}
