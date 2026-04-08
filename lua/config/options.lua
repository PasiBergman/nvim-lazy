-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- See :help conceallevel
-- vim.opt.conceallevel = 0
-- vim.opt.conceallevel = 3

-- Disable **all animations**
vim.g.snacks_animate = false

-- Set cursor shape in different modes. See :help guicursor
-- n  = normal mode
-- v  = visual mode
-- sm = showmatch in Insert mode
-- i  = Insert mode
-- ve = Visual mode with 'selection' "exclusive"
-- r  = Replace mode
-- cr = Command-line Replace mode
-- o  = Operator-pending mode
--
-- See lua/plugin/theme.lua for color information
--
vim.opt.guicursor = "n-v-c-sm:block-bCursor,i-ve:ver25-iCursor,r-cr-o:hor20-hCursor"

-- Disable conceal in markdown files
-- See
--
--
--[[
vim.o.termguicolors = true
vim.keycode = vim.keycode or function(x)
  return vim.api.nvim_replace_termcodes(x, true, true, true)
end
-- vim.o.termpastefilter = ""
--]]
