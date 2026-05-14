return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    mappings = {
      show_help = {
        normal = "g?",
      },
    },
  },
  keys = {
    { "<leader>a", "", desc = "+ai Claude/Copilot", mode = { "n", "v" } },
    { "<leader>ap", "<cmd>CopilotChat<cr>", mode = "n", desc = "Copilot Chat" },
    { "<leader>ae", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Copilot Explain" },
    { "<leader>aR", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Copilot Review" },
    { "<leader>aF", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Copilot Fix Issue " },
    { "<leader>ao", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Copilot Optimize" },
    { "<leader>aD", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Copilot Generate Docs" },
    { "<leader>at", "<cmd>CopilotChatTest<cr>", mode = "v", desc = "Copilot Generate Tests" },
    { "<leader>am", "<cmd>CopilotChatCommit<cr>", mode = "n", desc = "Copilot Write Commit Message" },
  },
}
