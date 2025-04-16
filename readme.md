# Neovim Configuration: Key Mappings and Commands

This document outlines the key mappings and ex commands available in your Neovim configuration, based on the provided plugins and settings.

## Key Mappings

Your configuration defines several key mappings that trigger plugin functionality. These shortcuts are available in **normal mode** (`n`) unless otherwise specified.

### Telescope (Fuzzy Finder)

- `<leader>ff`: Find files (`:Telescope find_files`)
- `<leader>fg`: Live grep (search through files) (`:Telescope live_grep`)
- `<leader>fb`: List open buffers (`:Telescope buffers`)
- `<leader>fh`: Search help tags (`:Telescope help_tags`)

> **Note**: `<leader>` is typically set to `\` or `,` in Neovim. Check your configuration (e.g., `init.lua`) if you've remapped it.

### NeoTree (File Explorer)

- `<C-n>`: Toggle NeoTree file explorer with the filesystem revealed on the left (`:Neotree filesystem reveal left`)

### LSP (Language Server Protocol)

- `K`: Show hover documentation for the symbol under the cursor
- `<leader>gd`: Go to the definition of the symbol under the cursor
- `<leader>gr`: Find references to the symbol under the cursor
- `<leader>ca`: Perform code actions (e.g., quick fixes, refactorings)
- `<leader>gf`: Format the current buffer using LSP formatting

### DAP (Debugging)

- `<leader>dt`: Toggle a breakpoint at the current line
- `<leader>dc`: Continue (or start) debugging

### Completion (nvim-cmp)

These mappings work in **insert mode** to control autocompletion:

- `<C-b>`: Scroll documentation window up
- `<C-f>`: Scroll documentation window down
- `<C-Space>`: Trigger completion manually
- `<C-e>`: Abort/close the completion menu
- `<CR>` (Enter): Confirm the selected completion item

## Ex Commands

These are commands you can type after pressing `:` in normal mode. Many plugins provide commands that can be used directly or extended with arguments.

### Telescope

- `:Telescope <picker>`: Opens Telescope with a specific picker. Examples:
  - `:Telescope find_files`: Find files in the current directory
  - `:Telescope live_grep`: Search through files with live grep
  - `:Telescope buffers`: List and switch between buffers
  - `:Telescope help_tags`: Search Neovim help tags

Run `:Telescope` alone to see available pickers or use **Tab completion** for options.

### NeoTree

- `:Neotree [args]`: Opens the NeoTree file explorer. Examples:
  - `:Neotree filesystem reveal left`: Show the filesystem, revealing the current file
  - `:Neotree buffers`: Show open buffers
  - `:Neotree git_status`: Show Git status

Use `:Neotree` without arguments for the default view or check `:help neo-tree` for more options.

### LSP

- `:LspInfo`: Display information about active LSP clients
- `:LspStart`: Start an LSP client (if stopped)
- `:LspStop`: Stop an LSP client
- `:LspRestart`: Restart an LSP client

These commands are useful for managing LSP servers configured via `nvim-lspconfig`.

### DAP (Debugging)

- `:DapContinue`: Continue (or start) the debugging session
- `:DapStepOver`: Step over the next line
- `:DapStepInto`: Step into a function call
- `:DapStepOut`: Step out of the current function
- `:DapToggleBreakpoint`: Toggle a breakpoint at the current line

Check `:help dap-commands` for additional DAP commands.

### Mason (LSP Server Management)

- `:Mason`: Open the Mason UI to manage LSP servers, formatters, and linters
- `:MasonInstall <package>`: Install a specific package (e.g., `:MasonInstall pyright`)
- `:MasonUninstall <package>`: Uninstall a package

Use `:Mason` to explore available tools and their installation status.

### Treesitter

- `:TSInstall <language>`: Install a language parser (e.g., `:TSInstall python`)
- `:TSUpdate`: Update all installed language parsers
- `:TSBufEnable <module>`: Enable a Treesitter module (e.g., `highlight`) for the current buffer

Run `:TSInstallInfo` to see installed parsers or check `:help nvim-treesitter-commands` for more.

### Colorscheme

- `:colorscheme catppuccin`: Set the colorscheme to Catppuccin (already set by default in your config)
