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

-- Paste from clipboard (normal and insert mode)
map({ "n", "i" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
