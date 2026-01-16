return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "actionlint",
        "gh-actions-language-server",
        "helm-ls",
        "gopls",
        "tfsec",
        "harper-ls",
        "yamllint",
        "snyk",
        "hclfmt",
        "trivy",
        "terraform",
        "bash-language-server",
        "luacheck",
        "luaformatter"
      })
    end,
  },
}
