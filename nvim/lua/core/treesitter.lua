require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "lua", "rust", "go", "python", "sql", "json", "html", "gitignore", "dockerfile", "bash" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
