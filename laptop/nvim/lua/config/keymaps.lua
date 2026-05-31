-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ~/.config/nvim/lua/config/keymaps.lua

vim.keymap.set("n", "fmc", "<cmd>Telescope file_browser path=" .. vim.fn.stdpath("config") .. "<CR>")
vim.keymap.set("n", "fmp", "<cmd>Telescope file_browser path=~/projects<CR>")
