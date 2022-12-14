return {
  settings = {
    Lua = {
      telemetry = { enable = true },
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim", "astronvim", "astronvim_installation", "packer_plugins", "bit" } },
      workspace = {
        library = {
          vim.fn.expand "$VIMRUNTIME/lua",
          astronvim.install.home .. "/lua",
          astronvim.install.config .. "/lua",
        },
      },
    },
  },
}
