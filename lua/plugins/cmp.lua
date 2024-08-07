-- Autocompletado https://github.com/hrsh7th/nvim-cmp?tab=readme-ov-file
return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'neovim/nvim-lspconfig',
    'rafamadriz/friendly-snippets',
    'luckasRanarison/tailwind-tools.nvim',
    'onsails/lspkind-nvim',
  },
  event = "VeryLazy",
  config = function()
    local cmp = require('cmp')
    local luasnip = require('luasnip')
    local select_opts = { behavior = cmp.SelectBehavior.Select }
    cmp.setup({
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = {
        --Confirmar seleccion
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
        --Abrir autocompletado
        ['<C-space>'] = cmp.mapping.complete(),

        --Siguiente opcion
        ['<Tab>'] = cmp.mapping(function(fallback)
          local col = vim.fn.col('.') - 1
          if cmp.visible() then
            cmp.select_next_item(select_opts)
          elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
            fallback()
          else
            cmp.complete()
          end
        end, { 'i', 's' }),

        --Anterior opcion
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item(select_opts)
          else
            fallback()
          end
        end, { 'i', 's' }),

        --Scroll Docs
        ['<C-k>'] = cmp.mapping.scroll_docs(-4),
        ['<C-j>'] = cmp.mapping.scroll_docs(4),
      },
      --Aqui se agregan todos los sources para autocompletdo
      sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'luasnip' },
        { name = 'buffer' },
        { name = 'friendly-snippets' },
        { name = 'codeium' },
      },
      formatting = {
        format = require('lspkind').cmp_format({
          before = require('tailwind-tools.cmp').lspkind_format
        })
      }
    })
    --Configuraciones de sources especificas
    -- Config de linea de comandos
    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Config de los paths
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline' }
      })
    })
  end,
}
