-- User Functions
local function map(mode, bind, command, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, bind, command, opts)
end

-- Key Maps
-- Core
map('n', '<leader>w', '<cmd>w<cr>', {})
map('n', '<leader>q', '<cmd>q<cr>', {})
map('n', '<leader>Q', '<cmd>qall<cr>', {})
map('n', '<leader>c', '<cmd>bdelete<cr>', {})
map('n', '<leader>C', '<cmd>bdelete!<cr>', {})
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', {}) -- Variable rename
map('n', '<leader>|', '<C-w>v', {}) -- Vertical buffer split
map('n', '<leader>-', '<C-w>s', {}) -- Horizontal buffer split

-- DAP
map('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', {})
map('n', '<leader>ds', '<cmd>lua require("dap").continue()<cr>', {})
map('n', '<leader>dd', '<cmd>lua require("dapui").toggle()<cr>', {})
map('n', '<leader>dv', '<cmd>lua require("dap").step_over()<cr>', {})
map('n', '<leader>di', '<cmd>lua require("dap").step_into()<cr>', {})
map('n', '<leader>do', '<cmd>lua require("dap").step_out()<cr>', {})
map('n', '<leader>dc', '<cmd>lua require("dap").close()<cr>', {})


-- Packer
map('n', '<leader>ps', '<cmd>PackerSync<cr>', {})

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
