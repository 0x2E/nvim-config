return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- golang
        "gopls",
        "goimports",
        "staticcheck",
        "delve",
        -- json
        "json-lsp",
        -- sh
        "shfmt",
        -- python
        "pyright",
        "pylint",
        "black",
        "isort",
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.stylua,
          nls.builtins.formatting.shfmt,
          nls.builtins.formatting.goimports,
          nls.builtins.formatting.prettier.with({
            filetypes = {
              "javascript",
              "javascriptreact",
              "typescript",
              "typescriptreact",
              "vue",
              "css",
              "scss",
              "less",
              "html",
              "json",
              "jsonc",
              "yaml",
              "markdown",
              "markdown.mdx",
              "graphql",
              "handlebars",
            },
          }),
          -- python
          nls.builtins.diagnostics.pylint,
          nls.builtins.formatting.isort,
          nls.builtins.formatting.black,
        },
      }
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      single_file_support = true,
    },
  },
}
