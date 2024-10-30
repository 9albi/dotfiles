return {
  {
    "fei6409/log-highlight.nvim",
    config = function()
      require("log-highlight").setup({})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
}
