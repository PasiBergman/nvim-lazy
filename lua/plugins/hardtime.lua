return {
  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      disabled_keys = {
        ["<Up>"] = false, -- Allow <Up> key
        ["<Space>"] = { "n", "x" }, -- Disable <Space> key in normal and visual mode
      },
      disabled_filetypes = {
        lazy = false, -- Enable Hardtime in lazy filetype
        ["dapui*"] = false, -- Enable Hardtime in filetype starting with dapui
      },
    },
    config = function()
      require("hardtime").setup()
    end,
  },
}
