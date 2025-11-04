return {
  -- LSP keymaps
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", "<cmd>Lspsaga hover_doc<cr>" },
          },
        },
        terraformls = {
          root_dir = require("lspconfig").util.root_pattern(".terraform", ".tf", ".git"),
        },
        harper_ls = {},
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lspsaga").setup({
        lightbulb = {
          sign = false,
        },
        ui = {
          title = true,
        },
      })
    end,
  },
}
