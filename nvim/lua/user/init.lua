--              AstroNvim Configuration Table
-- All configuration changes should go inside of the table below

-- You can think of a Lua "table" as a dictionary like data structure the
-- normal format is "key = value". These also handle array like data structures
-- where a value with no key simply has an implicit numeric key
local config = {

    require('user.dap.adapter-python'),
    require('user.dap.config-python'),
    -- Configure AstroNvim updates
    updater = {
        remote = "origin", -- remote to use
        channel = "nightly", -- "stable" or "nightly"
        version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
        branch = "main", -- branch name (NIGHTLY ONLY)
        commit = nil, -- commit hash (NIGHTLY ONLY)
        pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
        skip_prompts = false, -- skip prompts about breaking changes
        show_changelog = true, -- show the changelog after performing an update
        auto_reload = false, -- automatically reload and sync packer after a successful update
        auto_quit = false, -- automatically quit the current session after a successful update
        -- remotes = { -- easily add new remotes to track
        --   ["remote_name"] = "https://remote_url.come/repo.git", -- full remote url
        --   ["remote2"] = "github_user/repo", -- GitHub user/repo shortcut,
        --   ["remote3"] = "github_user", -- GitHub user assume AstroNvim fork
        -- },
    },

    -- Set colorscheme to use
    -- colorscheme = "astro",
    colorscheme = "ayu",

    -- Add highlight groups in any theme
    highlights = {
        -- init = { -- this table overrides highlights in all themes
        --   Normal = { bg = "#000000" },
        -- }
        -- duskfox = { -- a table of overrides/changes to the duskfox theme
        --   Normal = { bg = "#000000" },
        -- },
    },

    -- set vim options here (vim.<first_key>.<second_key> = value)
    -- If you need more control, you can use the function()...end notation
    -- options = function(local_vim)
    --   local_vim.opt.relativenumber = true
    --   local_vim.g.mapleader = " "
    --   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
    --   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
    --
    --   return local_vim
    -- end,

    -- Set dashboard header
    header = {
        "███████╗██╗  ██╗ █████╗ ██╗     ██╗         ██╗    ██╗███████╗    ██████╗ ██╗      █████╗ ██╗   ██╗     █████╗      ██████╗  █████╗ ███╗   ███╗███████╗██████╗", 
        "██╔════╝██║  ██║██╔══██╗██║     ██║         ██║    ██║██╔════╝    ██╔══██╗██║     ██╔══██╗╚██╗ ██╔╝    ██╔══██╗    ██╔════╝ ██╔══██╗████╗ ████║██╔════╝╚════██╗",
        "███████╗███████║███████║██║     ██║         ██║ █╗ ██║█████╗      ██████╔╝██║     ███████║ ╚████╔╝     ███████║    ██║  ███╗███████║██╔████╔██║█████╗    ▄███╔╝",
        "╚════██║██╔══██║██╔══██║██║     ██║         ██║███╗██║██╔══╝      ██╔═══╝ ██║     ██╔══██║  ╚██╔╝      ██╔══██║    ██║   ██║██╔══██║██║╚██╔╝██║██╔══╝    ▀▀══╝", 
        "███████║██║  ██║██║  ██║███████╗███████╗    ╚███╔███╔╝███████╗    ██║     ███████╗██║  ██║   ██║       ██║  ██║    ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗  ██╗  ", 
        "╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝     ╚══╝╚══╝ ╚══════╝    ╚═╝     ╚══════╝╚═╝  ╚═╝   ╚═╝       ╚═╝  ╚═╝     ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝  ╚═╝  ", 
    },

    diagnostics = {
        virtual_text = true,
        underline = true,
    },

    -- Extend LSP configuration
    lsp = {
        formatting = {
            format_on_save = {
                enabled = true, -- enable or disable format on save globally
            },
            timeout_ms = 1000, -- default format timeout
        },
        -- Add overrides for LSP server settings, the keys are the name of the server
        ["server-settings"] = {
            pyright = {
              venvPath = ".",
              venv = "venv",
              verboseOutput = true
            }
        },
    },

    -- Mapping data with "desc" stored directly by vim.keymap.set().
    --
    -- Please use this mappings table to set keyboard mapping since this is the
    -- lower level configuration and more robust one. (which-key will
    -- automatically pick-up stored data by this setting.)
    mappings = {
        -- first key is the mode
        n = {
            -- second key is the lefthand side of the map
            -- mappings seen under group name "Buffer"
            ["<leader>|"] = {"<cmd>vsplit<cr>", desc = "Split Vertical"},
            ["<leader>-"] = {"<cmd>split<cr>", desc = "Split Horizontal"},
            ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
            ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
            ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
            ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
            -- quick save
            -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
        },
        t = {
            -- setting a mapping to false will disable it
            -- ["<esc>"] = false,
        },
    },

    -- Configure plugins
    plugins = {
        init = {
            {
                "shatur/neovim-ayu",
                as = "ayu",
                config = function()
                    require("ayu").setup({})
                end,
            },
            {
                "EdenEast/nightfox.nvim",
                as = "nightfox",
                config = function()
                    require("nightfox").setup({})
                end,
            },
        },
        -- All other entries override the require("<key>").setup({...}) call for default plugins
        ["null-ls"] = {
            sources = {
                require("null-ls").builtins.formatting.prettier,
                -- null_ls.builtins.diagnostics.pylint.with({
                    -- diagnostics_postprocess = function(diagnostic)
                        -- diagnostic.code = diagnostic.message_id
                    -- end,
                -- }),
                require("null-ls").builtins.diagnostics.pylint.with({
                        extra_args = { "--init-hook", "import sys;import os;sys.path.append(os.getcwd());sys.path.append([r+'/'+d[0] for r, d, f in os.walk('.') if 'site-packages' in d][0])"} 
                }),
                -- require("null-ls").builtins.diagnostics.pylint,
                require("null-ls").builtins.formatting.isort,
                require("null-ls").builtins.formatting.black,
                require("null-ls").builtins.diagnostics.protolint
            }
            -- return config -- return final config table
        -- end,
        },
        treesitter = { -- overrides `require("treesitter").setup(...)`
            ensure_installed = {
                "bash",
                "c",
                "go",
                "lua",
                "python",
                "rust",
            },
        },
        -- use mason-lspconfig to configure LSP installations
        ["mason-lspconfig"] = { -- overrides `require("mason-lspconfig").setup(...)`
            -- ensure_installed = { "sumneko_lua" },
            ensure_installed = {
                "golangci_lint_ls",
                "gopls",
                "rust_analyzer",
                "pyright",
                "dockerls",
                "tsserver",
                "bashls",
                "clangd",
            },
        },
        -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
        ["mason-null-ls"] = { -- overrides `require("mason-null-ls").setup(...)`
            -- ensure_installed = { "prettier", "stylua" },
            ensure_installed = {
                "buf",
                "gofumpt",
                "rustfmt",
                "prettier",
                "clangd-format",
                "pylint",
                "protolint",
            },
        },
    },

    -- LuaSnip Options
    luasnip = {
        -- Extend filetypes
        filetype_extend = {
            -- javascript = { "javascriptreact" },
        },
        -- Configure luasnip loaders (vscode, lua, and/or snipmate)
        vscode = {
            -- Add paths for including more VS Code style snippets in luasnip
            paths = {},
        },
    },

    -- CMP Source Priorities
    -- modify here the priorities of default cmp sources
    -- higher value == higher priority
    -- The value can also be set to a boolean for disabling default sources:
    -- false == disabled
    -- true == 1000
    cmp = {
        source_priority = {
            nvim_lsp = 1000,
            luasnip = 750,
            buffer = 500,
            path = 250,
        },
    },

    -- Modify which-key registration (Use this with mappings table in the above.)
    ["which-key"] = {
        -- Add bindings which show up as group name
        register = {
            -- first key is the mode, n == normal mode
            n = {
                -- second key is the prefix, <leader> prefixes
                ["<leader>"] = {
                    -- third key is the key to bring up next level and its displayed
                    -- group name in which-key top level menu
                    ["b"] = { name = "Buffer" },
                },
            },
        },
    },
    options = {
        opt = {
            -- set to true or false etc.
   			termguicolors = true,
            tabstop = 4,
   			shiftwidth = 4,
            foldmethod = 'indent',
   			foldenable = false,
            expandtab = true,
   			smartindent = true,
            relativenumber = true, -- sets vim.opt.relativenumber
            number = true, -- sets vim.opt.number
            spell = false, -- sets vim.opt.spell
            signcolumn = "auto", -- sets vim.opt.signcolumn to auto
            wrap = false, -- sets vim.opt.wrap
        },
        go = {
            autowriteall = true,
            mapleader = " ", -- sets vim.g.mapleader
            autoformat_enabled = true, -- enable or disable auto formatting at start (lsp.formatting.format_on_save must be enabled)
            cmp_enabled = true, -- enable completion at start
            autopairs_enabled = true, -- enable autopairs at start
            diagnostics_enabled = true, -- enable diagnostics at start
            status_diagnostics_enabled = true, -- enable diagnostics in statusline
            icons_enabled = true, -- disable icons in the UI (disable if no nerd font is available, requires :PackerSync after changing)
            ui_notifications_enabled = true, -- disable notifications when toggling UI elements
        },
    },

    -- This function is run last and is a good place to configuring
    -- augroups/autocommands and custom filetypes also this just pure lua so
    -- anything that doesn't fit in the normal config locations above can go here
    polish = function()
        -- Set up custom filetypes
        -- vim.filetype.add {
        --   extension = {
        --     foo = "fooscript",
        --   },
        --   filename = {
        --     ["Foofile"] = "fooscript",
        --   },
        --   pattern = {
        --     ["~/%.config/foo/.*"] = "fooscript",
        --   },
        -- }
    end,
}

return config
