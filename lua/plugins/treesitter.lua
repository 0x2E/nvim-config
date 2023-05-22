return {

  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
      "bash",
      "c",
      "lua",
      "luadoc",
      "luap",
      "python",
      "go",
      -- frontend
      "html",
      "css",
      "javascript",
      "typescript",
      "tsx",
      -- conf
      "json",
      "yaml",
      -- other
      "regex",
      "query",
      "markdown",
      "markdown_inline",
      "vim",
      "vimdoc",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  },
}
