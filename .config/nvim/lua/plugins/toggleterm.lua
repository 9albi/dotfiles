return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    cmd = "ToggleTerm",
    keys = {
      { "<leader>th", "<cmd>ToggleTerm size=40 direction=horizontal<cr>", desc = "Open a horizontal terminal at the Desktop directory" },
    },
    -- opts = {
    --   open_mapping = [[<C-\>]],
    --   direction = "horizontal",
    --   start_in_insert = true,
    --   -- insert_mappings = true,
    --   -- shade_filetypes = {},
    --   -- hide_numbers = true,
    --   terminal_mappings = true,
    -- },
  },
}
