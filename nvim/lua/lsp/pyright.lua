local lsp = require('lspconfig')
lsp.pyright.setup {
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    venvPath = '.',
    venv = 'venv',
    verboseOutput = true
}
