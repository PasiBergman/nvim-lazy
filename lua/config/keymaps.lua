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
--
--

-- Set up key mappings for CopilotChat commands if the plugin is available.
-- Uses which-key to register a group and several CopilotChat-related commands.
if pcall(require, "CopilotChat") then
  local whichkey = require("which-key")

  whichkey.add({
    { "<leader>a", group = "+AI (Copilot Chat)", mode = { "n", "v" }, icon = "" },
    -- { "<leader>aC", "<cmd>CopilotChat<cr>", mode = "n", desc = "Copilot Chat" },
    { "<leader>ae", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Copilot Explain Code" },
    { "<leader>ar", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Copilot Review Code" },
    { "<leader>af", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Copilot Fix Code Issues" },
    { "<leader>ao", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Copilot Optimize Issues" },
    { "<leader>ad", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Copilot Generate Docs" },
    { "<leader>at", "<cmd>CopilotChatTest<cr>", mode = "v", desc = "Copilot Generate Tests" },
    { "<leader>am", "<cmd>CopilotChatCommit<cr>", mode = "n", desc = "Copilot Write Commit Message" },
    { "<leader>as", "<cmd>CopilotChatCommit<cr>", mode = "v", desc = "Copilot Generate Commit for Selection" },
    { "<leader>ac", "<cmd>ClaudeCode toggle<cr>", mode = { "n", "v" }, desc = "ClaudeCode toggle" },
    { "<leader>as", "<cmd>ClaudeCodeSend selection<cr>", mode = { "n", "v" }, desc = "ClaudeCode Selection" },
    { "<leader>af", "<cmd>ClaudeCodeSend file<cr>", mode = { "n" }, desc = "ClaudeCode File" },
    { "<leader>ab", "<cmd>ClaudeCodeSend buffer<cr>", mode = { "n" }, desc = "ClaudeCode Buffer" },
    { "<leader>ad", "<cmd>ClaudeCodeDiff<cr>", mode = { "n" }, desc = "ClaudeCode Diff" },
  })
end
