local dap = require('dap')
dap.adapters.python = {
  type = 'executable';
  command = os.getenv('HOME') .. '/.pyenv/versions/debugpy/bin/python';
  args = { '-m', 'debugpy', '--listen', '5678'};
}
