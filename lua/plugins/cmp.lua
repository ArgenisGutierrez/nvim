return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "saadparwaiz1/cmp_luasnip",
    "L3MON4D3/LuaSnip",
    "neovim/nvim-lspconfig",
    "rafamadriz/friendly-snippets",
    "luckasRanarison/tailwind-tools.nvim",
    "onsails/lspkind-nvim",
  },
  event = "VeryLazy",
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")
    local tailwind_cmp_format = require("tailwind-tools.cmp").lspkind_format
    local select_opts = { behavior = cmp.SelectBehavior.Select }

    -- Cargar los snippets desde friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      view = {
        entries = "custom", -- can be "custom", "wildmenu" or "native"
      },
      window = {
        completion = vim.tbl_extend("force", cmp.config.window.bordered(), {
          border = "rounded", -- Borde redondeado
          winblend = 0,  -- Transparencia (0 = opaco)
          winhighlight = "Normal:CmpNormal,CursorLine:PmenuSel,FloatBorder:CmpBorder",
          scrollbar = {
            ch = "▐", -- Caracter para la scrollbar
          },
        }),
        documentation = vim.tbl_extend("force", cmp.config.window.bordered(), {
          border = "rounded",
          winblend = 0,
          winhighlight = "Normal:CmpDoc,FloatBorder:CmpDocBorder",
        }),
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item(select_opts)
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item(select_opts)
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<C-k>"] = cmp.mapping.scroll_docs(-4),
        ["<C-j>"] = cmp.mapping.scroll_docs(4),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
        { name = "buffer" },
        { name = "codeium" },
      }),
      formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
          -- Aplicamos la configuración de lspkind con símbolos y mapeo personalizado
          local kind = require("lspkind").cmp_format({
            mode = "symbol", -- Modo símbolo (icono + texto)
            maxwidth = 50,
            ellipsis_char = "...",
            symbol_map = { Codeium = "󱚣" }, -- Mapeo personalizado para Codeium
          })(entry, vim_item)

          -- Personalización adicional del formato (split del texto)
          local strings = vim.split(kind.kind, "%s", { trimempty = true })
          kind.kind = " " .. (strings[1] or "") .. " " -- Icono
          kind.menu = "    (" .. (strings[2] or "") .. ")" -- Texto en el menú

          return kind
        end,
      },
    })

    -- Configuración para el modo comando (para '/' y '?')
    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = { { name = "buffer" } },
    })

    -- Configuración para el modo comando ':' (para comandos y paths)
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })
  end,
}
