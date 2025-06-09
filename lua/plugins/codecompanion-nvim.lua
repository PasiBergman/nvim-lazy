return {}

--[[
return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  -- event = "VeryLazy",
  config = function()
    require("codecompanion").setup({
      adapters = {
        openai = {
          base_url = "http://localhost:1234/v1", -- Your LM Studio server URL
          api_key = "not-needed-for-local-lm-studio",
          model = "qwen/qwen2.5-coder-14b", -- e.g., 'deepseek-coder-7b-instruct'
        },
      },
      -- Other codecompanion settings for prompts, keymaps, etc.
    })
  end,
}
]]
