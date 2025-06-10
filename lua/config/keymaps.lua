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
    -- { "<leader>ac", "<cmd>CopilotChat<cr>", mode = "n", desc = "Copilot Chat" },
    { "<leader>ae", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Explain Code (Copilot Chat)" },
    { "<leader>ar", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Review Code (Copilot Chat)" },
    { "<leader>af", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Fix Code Issues (Copilot Chat)" },
    { "<leader>ao", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Optimize Issues (Copilot Chat)" },
    { "<leader>ad", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Generate Docs (CopilotChat)" },
    { "<leader>at", "<cmd>CopilotChatTest<cr>", mode = "v", desc = "Generate Tests (CopilotChat)" },
    { "<leader>am", "<cmd>CopilotChatCommit<cr>", mode = "n", desc = "Write Commit Message (CopilotChat)" },
    { "<leader>as", "<cmd>CopilotChatCommit<cr>", mode = "v", desc = "Generate Commit for Selection (CopilotChat)" },
  })
end
