-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.clipboard = "unnamedplus"

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Newcomer defaults: start unfolded, less annoying
vim.opt.foldenable = false -- folds off on file open
vim.opt.foldlevel = 99 -- if you ever :set foldenable, everything stays open
