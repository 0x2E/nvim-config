-- akinsho/toggleterm.nvim
function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end
-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

return {
  -- toggle terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
    },
  },
  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false, -- only works on Windows for hidden files/directories
        },
      },
    },
  },
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"), -- directory where session files are saved
      options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
      pre_save = nil, -- a function to call before saving the session
    },
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      top_down = false,
    },
  },
  -- colorscheme
  {
    "projekt0n/github-nvim-theme",
    name = "github",
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark",
    },
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "material",
      },
    },
  },
}
