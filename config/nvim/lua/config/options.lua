-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.g.root_spec = { "cwd" }
-- vim.o.autochdir = true
vim.opt.swapfile = false
vim.g.tmux_navigator_preserve_zoom = 1
vim.g.tmux_navigator_no_wrap = 1
vim.lsp.set_log_level("off")
vim.g.lazyvim_picker = "snacks"
vim.opt.clipboard = "unnamedplus"
vim.filetype.add({
  pattern = {
    ["values.*%.yaml.gotmpl"] = "helm",
  },
  extension = {
    gotmpl = "gotmpl",
    tf = "terraform",
  },
})
vim.g.ai_cmp = true
