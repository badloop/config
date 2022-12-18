local M = {}
function M.load(use)
    use 'folke/tokyonight.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }
end
vim.api.nvim_command [[colorscheme tokyonight-moon]]
return M
