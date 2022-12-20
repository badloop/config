local M = {}
function M.load(use)
    use 'neovim/nvim-lspconfig'
end

require 'lspconfig'.pyright.setup {}
require 'lspconfig'.sumneko_lua.setup {
    -- ... other configs
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
return M
