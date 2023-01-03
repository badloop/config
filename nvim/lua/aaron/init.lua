local embedded_js = vim.treesitter.parse_query(
    "html",
    [[
    ((script_element) @script)
    ((raw_text) @javascript)
    ]]
)
