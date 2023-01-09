local M = {}
function M.load(use)
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use("folke/neodev.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("ray-x/go.nvim")
end

function M.config()
	require("lsp.main")
	require("lsp.pyright")
	require("lsp.yamlls")
	require("lsp.bashls")
	require("lsp.html")
	require("lsp.neodev")
	require("lsp.go")
	require("lsp.null")
end

local signs = { Error = " ", Warning = " ", Warn = " ", Hint = " ", Information = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return M
