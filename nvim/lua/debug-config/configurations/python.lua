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
