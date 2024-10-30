return {

  {
    "folke/noice.nvim",
    -- 💥 Highly experimental plugin that completely replaces
    -- the UI for messages, cmdline and the popupmenu.
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    event = "VeryLazy",
    ---@class NoiceConfig
    opts = {
      ---@type NoicePresets
      presets = { inc_rename = true },
      ---@type NoiceConfigViews
      views = {
        cmdline_popup = {
          position = {
            row = 7,
            col = "55%",
          },
        },
        cmdline_popupmenu = {
          position = {
            row = 7,
            col = "55%",
          },
        },
      },
    },
  },

  {
    "rcarriga/nvim-notify",
    opts = {
      -- background_colour = "#2E3440",
      stages = "static",
      -- timeout = 3000,
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
