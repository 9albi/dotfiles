return {
  {
    "tpope/vim-obsession",
  },
  {
    "rmagatti/auto-session",
    enable = false,
    lazy = false,
    dependencies = {
      "nvim-telescope/telescope.nvim", -- Only needed if you want to use sesssion lens
    },
    config = function()
      require("auto-session").setup({
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      })
    end,
  },
  {
    "folke/persistence.nvim",
    enable = false,
  },
}
