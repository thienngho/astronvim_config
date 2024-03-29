return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "terraformls",
        "tflint",
        "ansiblels",
        "jsonls",
        "pyright",
        "yamlls",
        "bashls",
        "gopls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    config = function(_)
      local mason_null_ls = require "mason-null-ls"
      local null_ls = require "null-ls"
      mason_null_ls.setup {
        ensure_installed = {
          "stylua",
          "black",
          "prettierd",
        },
        handlers = {
          prettierd = function()
            null_ls.register(null_ls.builtins.formatting.prettierd.with { extra_filetypes = { "json", "markdown" } })
          end,
        },
      }
    end,
  },
}
