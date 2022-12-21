local dap = require('dap')
dap.adapters = {}
dap.configurations = {}
dap.adapters.python = {
    type = 'executable';
    command = os.getenv('HOME') .. '/.pyenv/versions/debugpy/bin/python';
    args = { '-m', 'debugpy.adapter' };
}
dap.configurations.python = {
    {
        type = 'python';
        request = 'launch';
        name = "Launch current buffer";
        program = "${file}";
    }
}
