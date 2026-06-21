-- Launch the `hunk` terminal diff viewer (/opt/homebrew/bin/hunk) from Neovim.
-- Adds <leader>gH / <leader>gS under the <leader>g (git) group.
-- Maps are set on VeryLazy (after snacks registers its keys) so <leader>gS reliably
-- overrides LazyVim's "Git Stash" binding (last-set-wins).
local function hunk(cmd)
  return function()
    Snacks.terminal(cmd, { cwd = LazyVim.root() })
  end
end

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    vim.keymap.set("n", "<leader>gH", hunk({ "hunk", "diff" }), { desc = "Hunk Diff" })
    vim.keymap.set("n", "<leader>gC", hunk({ "hunk", "show", "HEAD~1" }), { desc = "Hunk Commit" })
  end,
})

return {}
