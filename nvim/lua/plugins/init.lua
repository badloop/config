return require('packer').startup({function(use)
    use 'wbthomason/packer.nvim'

    require('core').load(use)
    require('lsp').load(use)
    require('themes').load(use)
end,
config = require('plugins.packer')
})

