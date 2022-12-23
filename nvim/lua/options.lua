local o = vim.opt
local g = vim.g

vim.cmd('autocmd!')

-- Globals
g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_perl_provider = 0

-- Options
o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.number = true
o.relativenumber = true
o.cursorline = true
o.autoindent = true
o.smartindent = true
o.termguicolors = true
o.background = 'dark'
o.hidden = true
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldenable = false
o.signcolumn = 'yes'
o.laststatus = 3
o.encoding = 'utf-8'
o.fileencoding = 'utf-8'

-- Undercurl
vim.cmd([[let &t_Cs = '\e[4:3m']])
vim.cmd([[let &t_Ce = '\e[4:0m']])
