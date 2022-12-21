local packer = require('packer')

packer.startup({ function(use)
    use 'wbthomason/packer.nvim'

    require('core').load(use)
    require('lsp').load(use)
    require('dap').load(use)
    require('themes').load(use)
end,
    config = {
        display = {
            open_fn = require('packer.util').float,
        }
    }
})
return packer
