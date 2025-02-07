-- UI para git https://github.com/folke/lazy.nvim
return {
	"kdheepak/lazygit.nvim",
	keys = {
		{ "<leader>gg", "<cmd>:LazyGitCurrentFile<cr>", desc = " LazyGit", mode = "n" },
	},
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function() end,
}
