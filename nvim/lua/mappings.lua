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
map('n', '<leader>|', '<C-w>v', {}) -- Vertical buffer split
map('n', '<leader>-', '<C-w>s', {}) -- Horizontal buffer split

-- LSP
map('n', '<leader>lr', '<cmd>lua vim.lsp.buf.rename()<cr>', {}) -- Variable rename
map('n', '<leader>lR', '<cmd>lua require("telescope.builtin").lsp_references()<cr>', {}) -- Variable rename
map('n', '<S-k>', '<cmd>lua vim.lsp.buf.hover()<cr>', {}) -- Variable rename
map('n', '<leader>gD', '<cmd> lua vim.lsp.buf.declaration()<cr>', {})
map('n', '<leader>gd', '<cmd> lua vim.lsp.buf.definition()<cr>', {})
map('n', '<leader>ld', '<cmd>lua vim.diagnostic.open_float()<cr>', {})

-- DAP
map('n', '<leader>db', '<cmd>lua require("dap").toggle_breakpoint()<cr>', {})
map('n', '<leader>dc', '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Condition: "))<cr>', {})
map('n', '<leader>ds', '<cmd>lua require("dap").continue()<cr>', {})
map('n', '<leader>dd', '<cmd>lua require("dapui").toggle()<cr>', {})
map('n', '<leader>dv', '<cmd>lua require("dap").step_over()<cr>', {})
map('n', '<leader>di', '<cmd>lua require("dap").step_into()<cr>', {})
map('n', '<leader>do', '<cmd>lua require("dap").step_out()<cr>', {})
map('n', '<leader>dt', '<cmd>lua require("dap").terminate()<cr>', {})

-- Packer
map('n', '<leader>ps', '<cmd>PackerSync<cr>', {})

-- Comment
map('n', '<leader>/', '<cmd>lua require("Comment.api").toggle.linewise.current()<cr>', {})
map('v', '<leader>/', '<esc><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<cr>', {})

-- Zen mode
map('n', '<leader>Z', '<cmd>ZenMode<cr>', {})

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
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', {})
map('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', {})
map('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>', {})

-- Telescope -- git
map('n', '<leader>gb', '<cmd>Telescope git_branches<cr>', {})

-- Git
map('n', '<leader>gs', '<cmd>Gdiffsplit<cr>', {})
map('n', '<leader>gp', '<cmd>Gitsigns preview_hunk<cr>', {})
map('n', '<leader>gr', '<cmd>Gitsigns reset_hunk<cr>', {})
