return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "helm-ls",
        "gopls",
        "tfsec",
        "harper-ls",
        "yamllint",
        "snyk",
        "hclfmt",
        "yamlfmt",
        "trivy",
        "terraform",
        "bash-language-server",
        "luacheck",
        "luaformatter"
      })
    end,
  },
}
