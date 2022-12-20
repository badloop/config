local packer = require('packer')

packer.startup({ function(use)
    use 'wbthomason/packer.nvim'

    require('core').load(use)
    require('lsp').load(use)
    require('themes').load(use)
end,
})
packer.config = require('plugins.packer-config')
return packer
