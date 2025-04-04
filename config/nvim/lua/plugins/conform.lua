return {
  {
    "stevearc/conform.nvim",
    dependencies = { "mason.nvim" },
    lazy = true,
    cmd = "ConformInfo",
    opts = function(_, opts)
      opts.formatters_by_ft.yaml = { "yamlfmt" }
      opts.formatters_by_ft.helm = { "yamlfmt" }
    end,
  },
}
