local o = vim.opt
local g = vim.g

-- User Functions
local function map(mode, bind, command, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, bind, command, opts)
end

-- Options
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
o.foldmethod = 'expr'
o.foldexpr = 'nvim_treesitter#foldexpr()'
o.foldenable = false

-- Key Maps
-- Core
map('n', '<leader>w', '<cmd>w<cr>', {})
map('n', '<leader>q', '<cmd>q<cr>', {})
map('n', '<leader>c', '<cmd>bdelete<cr>', {})
map('n', '<leader>C', '<cmd>bdelete!<cr>', {})
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', {}) -- Variable rename
map('n', '<leader>|', '<C-w>v', {}) -- Vertical buffer split
map('n', '<leader>-', '<C-w>s', {}) -- Horizontal buffer split

-- Comment
map('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<cr>', {})
map('v', '<leader>/', '<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<cr>', {})

-- Zen mode
map('n', '<leader>Z', '<cmd>ZenMode<cr>', {})

-- NeoTree
map('n', '<leader>e', '<cmd>Neotree toggle<cr>', {})
map('n', '<leader>gs', '<cmd>Neotree float git_status<cr>', {})

-- Cursor movement
map('n', '<C-h>', '<C-w>h', {})
map('n', '<C-l>', '<C-w>l', {})
map('n', '<C-j>', '<C-w>j', {})
map('n', '<C-k>', '<C-w>k', {})

-- Bufferline
map('n', '<leader>bj', '<cmd>BufferLinePick<cr>', {})

-- Telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>', {})
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', {})
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {})
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
map('n', '<leader>gc', '<cmd>Telescope git_bcommits<cr>', {})

-- Fugitive (Git)
map('n', '<leader>gd', '<cmd>Gdiffsplit<cr>', {})
map('n', '<leader>ga', '<cmd>G add .<cr>', {})
map('n', '<leader>gc', '<cmd>G commit<cr>', {})
map('n', '<leader>gp', '<cmd>G push<cr>', {})

-- Format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
