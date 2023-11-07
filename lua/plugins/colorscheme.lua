-- default colorscheme is tokyonight
if true then
  return {}
end

return {
  -- Configure LazyVim to load Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
