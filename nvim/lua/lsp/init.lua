local M = {}
function M.load(use)
    use 'neovim/nvim-lspconfig'
end

require('lsp.pyright')
require('lsp.sumneko_lua')
require('lsp.yamlls')
return M
