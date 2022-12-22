local M = {}
function M.load(use)
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
end

local dap = require('dap')
dap.adapters = {}
dap.configurations = {}
require('debug-config.adapters')
require('debug-config.configs')
require('debug-config.dapui')
return M
