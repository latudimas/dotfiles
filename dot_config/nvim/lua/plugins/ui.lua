return {
  -- Popupmenu
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Remove "No Infromation" available on ts/js when showing hoverdoc
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      -- Add border on hoverdoc
      opts.presets.lsp_doc_border = true
    end,
  },

  -- Buffer line
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- Notification background, only when using transparent theme
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  --   -- Splash screen
  --   {
  --     "nvimdev/dashboard-nvim",
  --     event = "VimEnter",
  --     opts = function(_, opts)
  --       local logo = [[
  --                             ╱|、
  --                           (˚ˎ 。7
  --                            |、˜〵
  --                           じしˍ,)ノ
  --
  -- ]]
  --
  --       logo = string.rep("\n", 8) .. logo .. "\n\n"
  --       opts.config.header = vim.split(logo, "\n")
  --     end,
  --   },
}
