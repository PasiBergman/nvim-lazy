return {}

-- Fixed: https://github.com/LazyVim/LazyVim/issues/6185
--[[
return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap.preset = "super-tab"
      opts.completion.menu.border = "rounded"

      -- See LazyVim issue #6185 with blink.cmp v1.4+
      -- https://github.com/LazyVim/LazyVim/issues/6185
      -- Remove after fixed in LazyVim
      opts.keymap["<Tab>"] = {
        require("blink.cmp.keymap.presets").get("super-tab")["<Tab>"][1],
        LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
        "fallback",
      }
      return opts
    end,
  },
}
--]]
