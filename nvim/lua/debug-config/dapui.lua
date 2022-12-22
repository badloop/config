require('dapui').setup({
    layouts = {
        {
            elements = {
                -- Elements can be strings or table with id and size keys.
                { id = "scopes", size = 0.25 },
                "breakpoints",
                "watches",
                "console",
                "stacks",
            },
            size = 40, -- 40 columns
            position = "left",
        },
        {
            elements = {
            },
            size = 0.25, -- 25% of total lines
            position = "bottom",
        },
    },
})
