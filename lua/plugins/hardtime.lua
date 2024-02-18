--NOTE: HardTime para mejorar el uso de comandos y flujo de trabajo
--https://github.com/m4xshen/hardtime.nvim?tab=readme-ov-file
return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  config = true,
  opts = {
    -- Add "oil" to the disabled_filetypes
    disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil", "sagaoutline", "sagafinder","saga_codeaction", "alpha","help","checkhealth" },
  }
}
