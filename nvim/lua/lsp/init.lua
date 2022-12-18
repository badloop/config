local M = {}
function M.load(use)
    use 'neovim/nvim-lspconfig'
end

require'lspconfig'.pyright.setup{}
require'lspconfig'.lua.setup{}

return M
