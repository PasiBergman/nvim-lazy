return {
  "ThePrimeagen/harpoon",
  lazy = true,
  keys = {
    { "<leader>hh", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Add file" },
    { "<leader>hu", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "View project marks" },
    { "<leader>ha", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", desc = "Navigate to file 1" },
    { "<leader>hs", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", desc = "Navigate to file 2" },
    { "<leader>hd", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", desc = "Navigate to file 3" },
    { "<leader>hf", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", desc = "Navigate to file 4" },
  },
  opts = {},
}
