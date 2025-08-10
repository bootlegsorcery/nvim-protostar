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
    config = function()
      local lspconfig = require("lspconfig")

      local on_attach = function(client, bufnr)
        local buf_map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        buf_map("n", "gd", vim.lsp.buf.definition, "Go to Definition")
        buf_map("n", "K", vim.lsp.buf.hover, "Hover Documentation")
        buf_map("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
        buf_map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
        buf_map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
        buf_map("n", "gr", vim.lsp.buf.references, "Find References")
        buf_map("n", "[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
        buf_map("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
        buf_map("n", "<leader>f", function()
          vim.lsp.buf.format({ async = true })
        end, "Format Document")
      end

      local servers = {
        lua_ls = {},
        pyright = {},
        rust_analyzer = {},
        clangd = {},
        ts_ls = {}, -- Configure 'ts_ls' here
      }

      for server, config in pairs(servers) do
        config.on_attach = on_attach
        lspconfig[server].setup(config)
      end
    end,
  },
}

