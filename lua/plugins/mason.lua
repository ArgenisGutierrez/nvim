-- Mason https://github.com/williamboman/mason.nvim
return {
	"williamboman/mason.nvim",
	dependencies = {
		"neovim/nvim-lspconfig"
	},
  lazy = true,
	opts = {
		ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
	}
}
