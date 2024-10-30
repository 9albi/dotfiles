return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      italic = {
        strings = false,
        comments = false,
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
