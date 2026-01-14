return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		notifier = { enabled = true, timeout = 3000 },
		quickfile = { enabled = true },
		scroll = { enabled = true },
		indent = { enabled = true },
		scope = { enabled = true },
		words = { enabled = true }, -- Highlight palabra bajo cursor
		terminal = { enabled = true },
		lazygit = { enabled = true },
		git = { enabled = true }, -- Git blame y más
		dim = { enabled = true }, -- Dim inactive portions
		zen = { enabled = true }, -- Zen mode
		dashboard = { enabled = false },
	},

	keys = {
		-- ========== PICKERS / BÚSQUEDA (reemplaza Telescope) ==========
		{
			"<leader><space>",
			function()
				Snacks.picker.smart()
			end,
			desc = "󰮗 Smart Find Files",
		},
		{
			"<leader>ff",
			function()
				Snacks.picker.files()
			end,
			desc = "󰈞 Find Files",
		},
		{
			"<leader>fg",
			function()
				Snacks.picker.grep()
			end,
			desc = "󱘢 Live Grep",
		},
		{
			"<leader>fw",
			function()
				Snacks.picker.grep_word()
			end,
			desc = " Grep Word",
			mode = { "n", "x" },
		},
		{
			"<leader>fh",
			function()
				Snacks.picker.help()
			end,
			desc = "󰋖 Help Pages",
		},
		{
			"<leader>fc",
			function()
				Snacks.picker.command_history()
			end,
			desc = "󰘳 Command History",
		},
		{
			"<leader>fk",
			function()
				Snacks.picker.keymaps()
			end,
			desc = "󰌌 Keymaps",
		},
		{
			"<leader>ft",
			function()
				Snacks.picker.projects()
			end,
			desc = " Projects",
		},
		{
			"<leader>fr",
			function()
				Snacks.picker.registers()
			end,
			desc = " Registers",
		},
		{
			"<leader>fp",
			function()
				Snacks.picker.lazy()
			end,
			desc = " Search for Plugin Spec",
		},

		-- Git Pickers
		{
			"<leader>gs",
			function()
				Snacks.picker.git_status()
			end,
			desc = " Git Status",
		},
		{
			"<leader>gC",
			function()
				Snacks.picker.git_log()
			end,
			desc = " Git Commits",
		},
		{
			"<leader>gB",
			function()
				Snacks.picker.git_branches()
			end,
			desc = " Git Branches",
		},

		-- LSP Pickers
		{
			"<leader>ld",
			function()
				Snacks.picker.diagnostics()
			end,
			desc = "󰒡 Diagnostics",
		},
		{
			"<leader>lD",
			function()
				Snacks.picker.diagnostics({ buf = 0 })
			end,
			desc = "󰒡 Buffer Diagnostics",
		},

		-- ========== TERMINAL ==========
		{
			"<leader>t",
			function()
				Snacks.terminal()
			end,
			desc = " Toggle Terminal",
		},
		{
			"<C-/>",
			function()
				Snacks.terminal()
			end,
			desc = " Terminal",
			mode = { "n", "t" },
		},
		{
			"<C-_>",
			function()
				Snacks.terminal()
			end,
			desc = "which_key_ignore",
			mode = { "n", "t" },
		}, -- Fallback para algunos términos

		-- ========== LAZYGIT ==========
		{
			"<leader>gg",
			function()
				Snacks.lazygit()
			end,
			desc = "󰊢 Lazygit",
		},
		{
			"<leader>gf",
			function()
				Snacks.lazygit.log_file()
			end,
			desc = " Lazygit File History",
		},
		{
			"<leader>gl",
			function()
				Snacks.lazygit.log()
			end,
			desc = " Lazygit Log",
		},
		{
			"<leader>gb",
			function()
				Snacks.git.blame_line()
			end,
			desc = " Git Blame Line",
		},

		-- ========== NOTIFICACIONES ==========
		{
			"<leader>un",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "󰎟 Notification History",
		},
		{
			"<leader>uN",
			function()
				Snacks.notifier.hide()
			end,
			desc = "󱞀 Dismiss Notifications",
		},

		-- ========== UTILIDADES / TOGGLES ==========
		{
			"<leader>uz",
			function()
				Snacks.zen()
			end,
			desc = "󰚀 Toggle Zen Mode",
		},
		{
			"<leader>uZ",
			function()
				Snacks.zen.zoom()
			end,
			desc = " Toggle Zoom",
		},
		{
			"<leader>uD",
			function()
				Snacks.dim()
			end,
			desc = "󰹐 Toggle Dim",
		},
		{
			"<leader>uS",
			function()
				Snacks.scroll()
			end,
			desc = "󰕒 Toggle Smooth Scroll",
		},

		-- ========== BÚSQUEDA / NAVEGACIÓN RÁPIDA ==========
		{
			"]]",
			function()
				Snacks.words.jump(vim.v.count1)
			end,
			desc = "Next Reference",
			mode = { "n", "t" },
		},
		{
			"[[",
			function()
				Snacks.words.jump(-vim.v.count1)
			end,
			desc = "Prev Reference",
			mode = { "n", "t" },
		},

		-- ========== RENAME (file rename) ==========
		{
			"<leader>fR",
			function()
				Snacks.rename.rename_file()
			end,
			desc = " Rename File",
		},
	},
}
