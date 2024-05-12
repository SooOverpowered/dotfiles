return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
      window = {
        position = "right",
        mappings = {
          ["m"] = { "move", config = { show_path = "relative" } },
        },
      },
    },
  },
}
