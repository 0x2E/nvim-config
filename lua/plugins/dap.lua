return {
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup({
        dap_configurations = {
          {
            type = "go",
            name = "Debug Package (Arguments)",
            request = "launch",
            program = "${fileDirname}",
            args = function()
              local args_string = vim.fn.input("Args(split by <space>): ")
              return vim.fn.split(args_string, " ", true)
            end,
          },
        },
      })
    end,
  },
}
