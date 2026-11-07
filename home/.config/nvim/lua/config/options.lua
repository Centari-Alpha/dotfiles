-- Options are automatically loaded before lazy.nvim startup
-- Prevent built-in ftplugins (like rust.vim / python.vim) from overriding 2-space indentation with 4 spaces
vim.g.rust_recommended_style = 0
vim.g.python_recommended_style = 0

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
