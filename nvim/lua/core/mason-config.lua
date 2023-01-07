require('mason').setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
})

local ensure_installed = {
    'golangci-lint-langserver',
    'gopls',
    'bash-language-server',
    'lua-language-server',
    'yaml-language-server',
    'black',
    'pylint',
    'prettier',
    'delve',
    'jsonlint',
    'typescript-language-server',
    'pyright'
}

for _, pkg in ipairs(ensure_installed) do
    local p = require("mason-registry").get_package(pkg)
    if not p:is_installed() then
        p:install()
    end
end
