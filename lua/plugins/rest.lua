-- Plugin de peticiones http https://github.com/rest-nvim/rest.nvim
return {
	"rest-nvim/rest.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	keys = {
		{ "<leader>rr", "<cmd>Rest run<cr>", desc = " Rest Run", mode = "n" },
		{ "<leader>rl", "<cmd>Rest last<cr>", desc = "󰏗 Rest Last", mode = "n" },
	},
	config = function()
		require("rest-nvim").setup({
			result = {
				split = {
					stay_in_current_window_after_split = false,
				},
			},
		})
	end,
}
