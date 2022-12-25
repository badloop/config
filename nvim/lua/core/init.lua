local M = {}
function M.load(use)
    use {
        'nvim-neo-tree/neo-tree.nvim',
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'nvim-treesitter/nvim-treesitter'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'lukas-reineke/indent-blankline.nvim'
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
    -- use 'folke/neodev.nvim'
end

function M.config()
    require('core.treesitter')
    require('core.neo-tree')
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
    -- require('core.neodev')
end

return M
