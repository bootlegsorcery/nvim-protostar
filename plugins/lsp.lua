return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        opts = {
          ensure_installed = {
            "ts_ls",
            "lua_ls",
            "pyright",
            "rust_analyzer",
            "clangd",
          },
        },
      },
    },
  },
}

