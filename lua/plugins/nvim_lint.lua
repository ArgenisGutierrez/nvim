-- Linters para nvim https://github.com/mfussenegger/nvim-lint
return {
	"mfussenegger/nvim-lint",
	config = function()
		require('lint').linters_by_ft = {
			-- Linters para cada lenguaje
			--lua = {'selene'},
		}
	end
}
