local M = {}
function M.load(use)
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/playground'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }
    use 'akinsho/bufferline.nvim'
    use 'tpope/vim-fugitive'
    use 'folke/zen-mode.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'numToStr/Comment.nvim'
    use 'windwp/nvim-autopairs'
    use 'glepnir/dashboard-nvim'
    use 'petertriho/nvim-scrollbar'
    use 'williamboman/mason.nvim'
end

function M.config()
    require('core.treesitter')
    require('core.lualine')
    require('core.cmp')
    require('core.bufferline')
    require('core.fugitive')
    require('core.zen-mode')
    require('core.gitsigns')
    require('core.snip')
    require('core.autopairs')
    require('core.dash')
    require('core.scrollbar')
    require('core.mason-config')
end

return M
