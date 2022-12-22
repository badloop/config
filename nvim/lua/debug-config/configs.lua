local configs = require('dap').configurations

configs.python = {
    {
        type = 'python';
        request = 'launch';
        name = 'Debug Current File';
        program = '${file}';
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. '/venv/bin/python') == 1 then
                return cwd .. '/venv/bin/python'
            elseif vim.fn.executable(cwd .. '/.venv/bin/python') == 1 then
                return cwd .. '/.venv/bin/python'
            else
                return '/usr/bin/python'
            end
        end;
    },
}

configs.go = {
    {
        type = 'go';
        name = 'Debug Current File';
        request = 'launch';
        program = '${file}';
    },
    {
        type = 'go';
        name = 'Attach to Running Process...';
        request = 'attach';
        processId = function() require('dap.utils').pick_process(); end
    },
}
