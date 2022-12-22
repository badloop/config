local M = {}
function M.load(use)
    use 'neovim/nvim-lspconfig'
end

function M.config()
    require('lsp.pyright')
    require('lsp.sumneko_lua')
    require('lsp.yamlls')
end

--local lsp = require('lsp')
--lsp.handlers["textDocument/hover"] = lsp.with(vim.lsp.handlers.hover, {
--    border = "rounded",
--})

-- Provide helper for updating the default DiagnosticSign representation
-- local function set_sign(name, symbol)
--     vim.fn.sign_define(
--         'DiagnosticSign' .. name,
--         { text = symbol, numhl = 'DiagnosticDefault' .. name }
--     )
-- end
--
-- local signs = {}
-- signs['Error'] = 'Q'
-- signs['Info'] = 'P'
-- signs['Warning'] = 'A'
-- signs['Hint'] = 'L'

-- for sign, symbol in pairs(signs) do
--     set_sign(sign, symbol)
-- end

return M
