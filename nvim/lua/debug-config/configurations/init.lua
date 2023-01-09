require("debug-config.configurations.python")
require("debug-config.configurations.go")
require("dap.ext.vscode").load_launchjs()

-- Add pythonPath to user defined configurations
for _, config in pairs(require("dap").configurations.python) do
	if not config.pythonPath then
		config.pythonPath = function()
			local venv = os.getenv("VIRTUAL_ENV")
			if venv then
				return venv .. "/bin/python"
			else
				return "/usr/bin/python"
			end
		end
	end
end
