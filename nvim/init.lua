local opt = vim.opt
local global = vim.g

global.mapleader = " "

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.cursorline = true


require('plugins')
require('mappings')
vim.api.nvim_command [[colorscheme tokyonight-moon]]
