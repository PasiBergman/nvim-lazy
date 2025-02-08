-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map + character as $. On Skandinavian keyboard layouts + key is next to 0 key on the keyboard
vim.keymap.set("n", "+", "$", {})
vim.keymap.set("n", "å", "[", {})
vim.keymap.set("n", "ä", "]", {})

-- Better quickfix navigation for Skandinavian keyboard
-- Note! Normally Trouble plugin is used and has keymaps [q and ]q for prev and next
-- vim.keymap.set("n", "åq", "<cmd>cprev<CR>")
-- vim.keymap.set("n", "äq", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "äå", "<cmd>cclose<CE>")
