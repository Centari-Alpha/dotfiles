-- Autocmds are automatically loaded on the VeryLazy event
-- Enforce 2-space indentation across all filetypes (including Rust, C#, etc.)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
