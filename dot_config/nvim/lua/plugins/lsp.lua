return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "templ",
      })
    end,
  },
  -- lsp servers
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        tailwindcss = {
          filetypes_include = {
            "templ",
          },
          init_options = {
            userLanguages = {
              templ = "html",
            },
          },
        },
      },
    },
  },
}
