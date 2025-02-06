return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		-- Configurar null-ls con fuentes de formateo
		null_ls.setup({
			on_attach = function(client, bufnr)
				-- Configurar autocomando para formateo al guardar
				if client.supports_method("textDocument/formatting") then
					local group = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = group,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
	end,
}
