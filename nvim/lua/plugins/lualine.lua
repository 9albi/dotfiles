return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "meuter/lualine-so-fancy.nvim",
  },
  opts = {
    options = {
      theme = "seoul256",
      component_separators = { left = "│", right = "│" },
      section_separators = { left = "", right = "" },
      globalstatus = true,
      refresh = {
        statusline = 100,
      },
    },
    sections = {
      lualine_a = {
        { "fancy_mode", width = 10 },
      },
      lualine_b = {
        { "fancy_branch" },
        { "fancy_diff" },
      },
      lualine_c = {
        { "fancy_cwd", substitute_home = true },
      },
      lualine_x = {
        { "fancy_macro" },
        { "fancy_diagnostics" },
        { "fancy_searchcount" },
        { "fancy_location" },
      },
      lualine_y = {
        { "fancy_filetype", ts_icon = "" },
      },
      lualine_z = {
        { "fancy_lsp_servers" },
      },
    },
  },

  -- {
  --   "b0o/incline.nvim",
  --   -- 🎈 Floating statuslines for Neovim
  --   dependencies = {
  --     "nvim-tree/nvim-web-devicons",
  --   },
  --   opts = {
  --     debounce_threshold = {
  --       falling = 50,
  --       rising = 10,
  --     },
  --     hide = {
  --       cursorline = false,
  --       focused_win = false,
  --       only_win = false,
  --     },
  --     highlight = {
  --       groups = {
  --         InclineNormal = {
  --           default = true,
  --           group = "NormalFloat",
  --         },
  --         InclineNormalNC = {
  --           default = true,
  --           group = "NormalFloat",
  --         },
  --       },
  --     },
  --     ignore = {
  --       buftypes = "special",
  --       filetypes = {},
  --       floating_wins = true,
  --       unlisted_buffers = true,
  --       wintypes = "special",
  --     },
  --     window = {
  --       margin = {
  --         horizontal = 1,
  --         vertical = 1,
  --       },
  --       options = {
  --         signcolumn = "no",
  --         wrap = false,
  --       },
  --       padding = 1,
  --       padding_char = " ",
  --       placement = {
  --         horizontal = "right",
  --         vertical = "top",
  --       },
  --       width = "fit",
  --       winhighlight = {
  --         active = {
  --           EndOfBuffer = "None",
  --           Normal = "InclineNormal",
  --           Search = "None",
  --         },
  --         inactive = {
  --           EndOfBuffer = "None",
  --           Normal = "InclineNormalNC",
  --           Search = "None",
  --         },
  --       },
  --       zindex = 50,
  --     },
  --   },
  -- },
}
