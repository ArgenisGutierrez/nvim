return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {
				"query",
				"lua",
				"http",
				"regex",
				"bash",
				"go",
				"gomod",
				"php",
				"javascript",
				"typescript",
				-- Agrega los lenguajes que uses
			},
			auto_install = true, -- Cambia a true para instalación automática
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
				disable = { "yml", "python" }, -- Solo deshabilita lenguajes problemáticos
			},
		})

		vim.opt.foldmethod = "expr"
		vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
		vim.opt.foldenable = false -- Empieza con folds cerrados
	end,
}
