local M = {}
function M.load(use)
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
end

function M.config()
	local dap = require('dap')
	dap.adapters = {}
	dap.configurations = {}
	require('debug-config.adapters')
	require('debug-config.configs')
	require('debug-config.dapui')
end
return M
