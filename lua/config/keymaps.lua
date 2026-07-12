-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Toggle Terminal
map({ "n", "t" }, "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })

-- Select all
map("n", "<leader>sa", "ggVG", { desc = "Select all" })

-- Copy selection to clipboard (normal and visual mode)
map({ "n", "v" }, "<leader>y", '"+y', { desc = "Yank to clipboard" })

-- Paste from clipboard (normal)
map({ "n" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- Paste over highlighted text without overwriting your copy register
map("v", "p", '"_dP', { desc = "Paste without overwriting register" })

-- And don't forget the black hole delete we talked about earlier!
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete without copying" })

-- Move selected lines up and down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
