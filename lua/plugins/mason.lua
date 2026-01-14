return {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim", -- ✨ Esto instala TODO
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		-- ✨ Instalación automática de TODO
		require("mason-tool-installer").setup({
			ensure_installed = {
				-- LSP servers
				"lua_ls",
				-- Formatters
				"stylua", -- Lua
				"prettier", -- JS/TS/JSON/CSS/HTML/Markdown
				"php-cs-fixer", -- PHP
				-- Linters
				"phpstan", -- PHP
				"eslint_d", -- JS/TS (más rápido que eslint)
			},
			auto_update = false,
			run_on_start = true, -- Instala al iniciar Neovim
		})
	end,
}
