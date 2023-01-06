local cfg = require('dap').configurations

cfg.python = {
    {
        type = 'python',
        request = 'launch',
        name = 'Debug Current File',
        program = '${file}',
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                return cwd .. '/venv/bin/python'
            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                return cwd .. '/.venv/bin/python'
            else
                return '/usr/bin/python'
            end
        end,
    },
    {
        type = 'python',
        request = 'attach',
        name = 'Attach to remote process...',
        connect = {
            host = function()
                return vim.fn.input('Host: ')
            end,
            port = function()
                return vim.fn.input('Port: ')
            end,
        },
        mode = 'remote',
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                return cwd .. '/venv/bin/python'
            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                return cwd .. '/.venv/bin/python'
            else
                return '/usr/bin/python'
            end
        end,
    },
}

require('dap.ext.vscode').load_launchjs()

-- local python_project_configs = vim.api.nvim_create_augroup('python_project_configs', { clear = true })
-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
--     callback = function()
--         local f = io.open(vim.fn.getcwd() .. '.vscode/launch.json')
--         if not f then
--             return nil
--         else
--             local data = f:read '*a'
--             f:close()
--             cfg = json.decode(data)
--
--             for config in pairs(cfg) do
--                 cfg.python.append(config)
--             end
--         end
--     end,
--     group = python_project_configs
-- })
