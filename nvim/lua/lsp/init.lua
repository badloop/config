local M = {}
function M.load(use)
    use 'neovim/nvim-lspconfig'
    use 'folke/neodev.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
end

function M.config()
    require('lsp.pyright')
    require('lsp.yamlls')
    require('lsp.bashls')
    require('lsp.html')
    require('lsp.neodev')
    require('lsp.go')
    require('lsp.null')
end

local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

return M
