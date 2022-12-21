local M = {}
function M.load(use)
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
end

-- require('core.treesitter')
require('debug-config.dap')
require('debug-config.dapui')
return M
