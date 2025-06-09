return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { "<leader>ac", "<cmd>CopilotChat<cr>", mode = "n", desc = "Copilot Chat" },
      { "<leader>ae", "<cmd>CopilotChatExplain<cr>", mode = "v", desc = "Explain Code" },
      { "<leader>ar", "<cmd>CopilotChatReview<cr>", mode = "v", desc = "Review Code" },
      { "<leader>af", "<cmd>CopilotChatFix<cr>", mode = "v", desc = "Fix Code Issues" },
      { "<leader>ao", "<cmd>CopilotChatOptimize<cr>", mode = "v", desc = "Optimize Issues" },
      { "<leader>ad", "<cmd>CopilotChatDocs<cr>", mode = "v", desc = "Generate Docs" },
      { "<leader>at", "<cmd>CopilotChatTest<cr>", mode = "v", desc = "Generate Tests" },
      { "<leader>am", "<cmd>CopilotChatCommit<cr>", mode = "n", desc = "Generate Commit Message" },
      { "<leader>as", "<cmd>CopilotChatCommit<cr>", mode = "v", desc = "Generate Commit for Selection" },
    },
  },
}
