return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "prisma",
        "astro",
        "gotmpl",
      })
      vim.filetype.add({
        extension = { gotmpl = "gotmpl"}
      })
    end,
  },
}
