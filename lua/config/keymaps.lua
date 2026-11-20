-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map + character as $. On Skandinavian keyboard layouts + key is next to 0 key on the keyboard
vim.keymap.set("n", "+", "$", {})
vim.keymap.set("n", "å", "[", {})
vim.keymap.set("n", "ä", "]", {})

-- Git blame via gitsigns; Git Browse moved from <leader>gB to <leader>go
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", { desc = "Git Blame Line" })
vim.keymap.set("n", "<leader>gB", "<cmd>Gitsigns blame<cr>", { desc = "Git Blame File" })
vim.keymap.del("x", "<leader>gB")
vim.keymap.set({ "n", "x" }, "<leader>go", function() Snacks.gitbrowse() end, { desc = "Git Browse (open)" })

-- Better quickfix navigation for Skandinavian keyboard
-- Note! Normally Trouble plugin is used and has keymaps [q and ]q for prev and next
-- vim.keymap.set("n", "åq", "<cmd>cprev<CR>")
-- vim.keymap.set("n", "äq", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "äå", "<cmd>cclose<CE>")
