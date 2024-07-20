-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here



-- Movement
local keyset = vim.keymap.set
keyset("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
keyset("t", "jk", "<cmd>close<cr>", { noremap = true, silent = true, desc = "<ESC>" })

keyset("v", "J", ":m '>+1<cr>gv=gv")
keyset("v", "K", ":m '<-2<cr>gv=gv")
-- keyset("n", "<space>h", "<c-w>h", { desc = "jump left window" }) -- Move cursor to Nth window left of current one.
-- keyset("n", "<space>j", "<c-w>j")
-- keyset("n", "<space>k", "<c-w>k")
-- keyset("n", "<space>l", "<c-w>l")
keyset("n", "<up>", "<cmd>resize +2<cr>")             -- increase current window's height
keyset("n", "<down>", "<cmd>resize -2<cr>")           -- decrease current window's height
keyset("n", "<right>", "<cmd>vertical resize +2<cr>") -- increase current window's width
keyset("n", "<left>", "<cmd>vertical resize -2<cr>")  -- decrease current window's width
keyset("n", "j", "(v:count ? 'j' : 'gj')", { expr = true })
keyset("n", "k", "(v:count ? 'k' : 'gk')", { expr = true })
