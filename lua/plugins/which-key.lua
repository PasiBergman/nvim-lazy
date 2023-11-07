return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    if require("lazyvim.util").has("harpoon") then
      opts.defaults["<leader>h"] = { name = "+harpoon" }
    end
  end,
}
