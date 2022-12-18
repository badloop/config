local o = vim.opt
local g = vim.g

g.mapleader = ' '

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.number = true
o.relativenumber = true
o.cursorline = true
o.autoindent = true
o.smartindent = true

vim.keymap.set('n', '<leader>e', ':Neotree<cr>')

-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
