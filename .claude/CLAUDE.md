# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

A personal Neovim configuration built on [LazyVim](https://lazyvim.github.io/). LazyVim provides the base plugin set and defaults; this repo layers customizations on top via `lua/config/` overrides and `lua/plugins/` spec files.

## Architecture

```
init.lua               # Entry point — bootstraps lazy.nvim, then calls lua/config/lazy.lua
lua/config/
  lazy.lua             # lazy.nvim setup: imports LazyVim, hardcoded extras (typescript, json), then lua/plugins/
  keymaps.lua          # Loaded on VeryLazy; Scandinavian keyboard remaps + (commented-out) AI group
  options.lua          # Loaded before startup; overrides LazyVim defaults
  autocmds.lua         # Custom autocommands
lua/plugins/           # One file per plugin override or addition; each returns a lazy.nvim spec table
lazyvim.json           # LazyVim extras toggled via :LazyExtras UI (source of truth for enabled extras)
lazy-lock.json         # Lockfile — commit after intentional upgrades
```

**How overrides work:** every file in `lua/plugins/` is merged into the lazy.nvim spec. To override a LazyVim plugin, return a spec with the same plugin name and supply `opts`, `config`, or `enabled`. To disable entirely, set `enabled = false` (see `disabled.lua`).

**LazyVim extras** (managed in `lazyvim.json`, not `lazy.lua`) cover: `ai.claudecode`, `ai.copilot`, `ai.copilot-chat`, `coding.mini-surround`, `editor.harpoon2`, `editor.mini-files`, `formatting.prettier`, `lang.{astro,docker,dotnet,markdown,toml,vue,yaml}`, `linting.eslint`, `util.{dot,mini-hipatterns}`. Additionally `lang.typescript` and `lang.json` are imported directly in `lazy.lua`.

## Key Customizations

**Scandinavian keyboard** (`lua/config/keymaps.lua`):
- `+` → `$` (end of line)
- `å` → `[`
- `ä` → `]`

**AI `<leader>a` group** — defined but currently commented out in `keymaps.lua`. Re-enable the `--[[ ... --]]` block to restore Claude Code and CopilotChat bindings.

**Copilot** (`lua/plugins/copilot-nvim.lua`): uses HiQ GitHub Enterprise (`https://hiqfi.ghe.com/`) as `auth_provider_url`.

**Formatting** (`lua/plugins/conform-nvim.lua`): adds `dotnet format` for C# (`.cs`) files on top of LazyVim's defaults.

**Vue LSP** (`lua/plugins/vue.lua`): currently returns an empty spec (`return {}`). A full volar + vtsls configuration is preserved in the commented-out block — reinstate it if Vue LSP is needed.

**Disabled plugins**: `mini.pairs` (auto-pairs) is disabled in `lua/plugins/disabled.lua`.

**Animations**: all snacks.nvim animations disabled globally via `vim.g.snacks_animate = false`.

## Common Operations

Update plugins: open Neovim → `:Lazy update`  
Toggle extras: open Neovim → `:LazyExtras`  
Reload config without restart: `:source $MYVIMRC` (limited — full restart is safer for plugin changes)  
Check plugin health: `:checkhealth`

## Adding a Plugin

Create `lua/plugins/<name>.lua` returning a lazy.nvim spec table. Follow the pattern of existing files: one plugin per file, use `opts` for simple config, `config = function()` only when `opts` is insufficient.

## Conventions

- `stylua` is the Lua formatter — keep `-- stylua: ignore` comments on lines that must not be reformatted.
- All LazyVim defaults live upstream; only add overrides here when the default genuinely needs changing.
- `lazy-lock.json` should be committed after deliberate upgrades, not on every session.
