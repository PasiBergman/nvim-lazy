return {
  "coder/claudecode.nvim",
  opts = {},
  keys = {
    { "<leader>a", "", desc = "+ai Claude/Copilot", mode = { "n", "v" } },
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Claude Toggle" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Claude Focus" },
    { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Claude Resume" },
    { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Claude Continue" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Claude Add buffer" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Claude Send to" },
    { "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>", desc = "Claude Add file" },
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Claude Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Claude Deny diff" },
  },
}
