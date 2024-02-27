return {
  {
    "nvim-pack/nvim-spectre",
    build = false,
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
  -- stylua: ignore
  keys = {
      { "<leader>sr", function() require("spectre").open({cwd = vim.loop.cwd(), is_insert_mode = true}) end, desc = "Replace in files (Spectre)" },
    },
  },
}
