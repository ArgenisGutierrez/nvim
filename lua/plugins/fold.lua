return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  config = function()
    require("ufo").setup({
      preview = {
        win_config = {
          border = "rounded", -- Opcional: Cambia el borde (rounded, single, double, etc.)
          winblend = 20, -- Ajusta la transparencia (0 = opaco, 100 = completamente transparente)
        },
        mappings = {
          scrollU = "<C-u>", -- Opcional: Mapea scroll hacia arriba
          scrollD = "<C-d>", -- Opcional: Mapea scroll hacia abajo
        },
      },
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,

      --Custom fold
      fold_virt_text_handler = function(virtText, lnum, endLnum, width, truncate)
        local newVirtText = {}
        local suffix = (" 󰘌 %d"):format(endLnum - lnum)
        local sufWidth = vim.fn.strdisplaywidth(suffix)
        local targetWidth = width - sufWidth
        local curWidth = 0

        for _, chunk in ipairs(virtText) do
          local chunkText = chunk[1]
          local chunkWidth = vim.fn.strdisplaywidth(chunkText)
          if targetWidth > curWidth + chunkWidth then
            table.insert(newVirtText, chunk)
          else
            chunkText = truncate(chunkText, targetWidth - curWidth)
            table.insert(newVirtText, { chunkText, chunk[2] })
            break
          end
          curWidth = curWidth + chunkWidth
        end
        table.insert(newVirtText, { suffix, "MoreMsg" })
        return newVirtText
      end,
    })
    vim.api.nvim_set_hl(0, "Folded", { bg = "NONE", fg = "#FFD700", blend = 20, italic = true })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE", fg = "#FFFFFF", blend = 20 })

    -- Configuración general de plegado
    vim.o.foldenable = true   -- Desactiva el plegado por defecto
    vim.o.foldlevel = 99      -- Abre todos los niveles por defecto
    vim.o.foldlevelstart = 99 -- Nivel inicial de plegado
    vim.o.foldmethod = "manual" -- No aplica plegado automático
    -- Mapeos personalizados
    vim.keymap.set("n", "zR", require("ufo").openAllFolds)
    vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
    vim.keymap.set("n", "zm", require("ufo").closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
    vim.keymap.set("n", "K", function()
      local winid = require("ufo").peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end)
  end,
}
