-- Autoconfiguracion de LSP con Mason https://github.com/williamboman/mason-lspconfig.nvim
return {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
      ensure_installed = {
        'tsserver',
        'lua_ls',
        'bashls',
      },
    })

		require("mason-lspconfig").setup_handlers {
			-- Funcion para configurar automaticamente los lsp con mason
			function(server_name) -- default handler (optional)
				require("lspconfig")[server_name].setup {
        }
			end,
		}
	end
}