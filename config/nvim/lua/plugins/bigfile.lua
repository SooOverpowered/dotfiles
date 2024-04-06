return {
  {
    "LunarVim/bigfile.nvim",
    opts = {
      patterns = function(bufnr, filesize_mib)
        -- you can't use `nvim_buf_line_count` because this runs on BufReadPre
        local file_contents = vim.fn.readfile(vim.api.nvim_buf_get_name(bufnr))
        local file_length = #file_contents
        -- local filetype = vim.filetype.match({ buf = bufnr })
        if file_length > 5000 then
          return true
        end
      end,
    },
  },
}