-- Panel con keymaps https://github.com/folke/which-key.nvim
return {
	"folke/which-key.nvim",
	dependencies = {
		"nvim-mini/mini.nvim",
	},
	event = "VeryLazy",
	opts = {
		icons = {
			mappings = false,
		},
	},
}
