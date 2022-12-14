local null_ls = require('null-ls')

local f = null_ls.builtins.formatting
local d = null_ls.builtins.diagnostics
local c = null_ls.builtins.completion

null_ls.setup({
    sources = {
        -- Formatting
        f.stylua,
        f.black,
        f.goimports_reviser,
        f.prettier.with({
            filetypes = {
                'javascriptreact',
                'typescriptreact',
                'javascript',
                'typescript',
                'css'
            },
            extra_args = {
                '--tab-width',
                '4'
            }
        }),

        -- Diagnostics
        d.eslint,
        d.pylint.with({
            extra_args = {
                "--init-hook",
                "import sys;import os;sys.path.append(os.getcwd());sys.path.append([r+'/'+d[0] for r, d, f in os.walk('.') if 'site-packages' in d][0])"
            },
            diagnostics = {
                disable = {
                    'too-many-argument'
                }
            }
        }),
        d.golangci_lint,

        -- Completion
        c.spell,
    },
})
