require('dapui').setup({
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                'stacks',
                'watches',
                'breakpoints',
                { id = 'scopes', size = 0.5 },
            },
            size = 40, -- 40 columns
            position = 'left',
        },
        {
            elements = {
                'repl'
            },
            size = 0.25, -- 25% of total lines
            position = 'bottom',
        },
    },
})
