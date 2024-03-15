return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols({
            symbols = {
              "method",
              "field",
              "type",
              "variable",
              "class",
              "interface",
              "module",
              "property",
              "enum",
              "struct",
              "event",
              "operator",
              "typeParameter",
              "constant",
              "function",
            },
          })
        end,
        desc = "Goto Symbol",
      },
      {
        "<leader>sS",
        function()
          require("telescope.builtin").lsp_dynamic_workspace_symbols({
            symbols = {
              "method",
              "field",
              "type",
              "variable",
              "class",
              "interface",
              "module",
              "property",
              "enum",
              "struct",
              "event",
              "operator",
              "typeParameter",
              "constant",
              "function",
            },
          })
        end,
        desc = "Goto Symbol (Workspace)",
      },
    },
  },
}
