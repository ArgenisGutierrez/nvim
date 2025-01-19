--Cambio facil de llaves y comillas https://github.com/kylechui/nvim-surround
return {
	"kylechui/nvim-surround",
	version = "*",
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({})
	end,
}
