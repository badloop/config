local o = vim.opt
local g = vim.g

g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

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

-- Core
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', {})
vim.keymap.set('n', '<leader>q', '<cmd>q<cr>', {})
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<cr>', {})
vim.keymap.set('n', '<leader>C', '<cmd>bdelete!<cr>', {})

-- NeoTree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>Neotree float git_status<cr>', {})

-- Cursor movement
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})

-- Bufferline
vim.keymap.set('n', '<leader>bj', '<cmd>BufferLinePick<cr>', {})

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gc', builtin.git_bcommits, {})

-- Fugitive (Git)
vim.keymap.set('n', '<leader>gd', '<cmd>Gdiffsplit<cr>', {})
vim.keymap.set('n', '<leader>ga', '<cmd>G add .<cr>', {})
vim.keymap.set('n', '<leader>gc', '<cmd>G commit<cr>', {})
vim.keymap.set('n', '<leader>gp', '<cmd>G push<cr>', {})

-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
