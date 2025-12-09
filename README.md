# Neovim Configuration by Ulisses

This is a personal Neovim configuration designed for a modern and efficient development workflow. It is built to be modular, easily extensible, and fast, leveraging the power of Lua and `lazy.nvim` for package management.

## Features

-   **🚀 Fast & Lazy-Loaded:** Uses [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins, ensuring Neovim starts quickly and plugins are loaded only when needed.
-   **🧩 Modular Structure:** Configuration is neatly organized into directories for core settings, plugins, and color schemes.
-   **💡 Smart Editing:** Features rich LSP integration, autocompletion, and formatting to enhance the coding experience.
-   **🔭 Fuzzy Finding:** Integrates [Telescope](https://github.com/nvim-telescope/telescope.nvim) for fast file searching, grepping, and more.
-   **🐛 Debugging Ready:** Comes with DAP (Debug Adapter Protocol) support for in-editor debugging.
-   **🤖 AI-Assisted:** Includes integration for GitHub Copilot and Copilot Chat.
-   **🎨 Themed & Styled:** Comes with several custom color schemes and a clean UI via `lualine` and `bufferline`.

## Installation

1.  **Backup your existing configuration (important!):**
    ```bash
    # Backup your current nvim folder
    mv ~/.config/nvim ~/.config/nvim.bak
    ```

2.  **Clone this repository:**
    ```bash
    git clone https://github.com/your-username/your-repo-name.git ~/.config/nvim
    ```

3.  **Launch Neovim:**
    ```
    nvim
    ```
    `lazy.nvim` will automatically install all the configured plugins the first time you start Neovim.

## Structure

The configuration is organized as follows:

-   `init.lua`: The main entry point. It sets up `lazy.nvim` and loads all the plugins.
-   `lua/core/`: Contains fundamental editor settings.
    -   `options.lua`: General Neovim options.
    -   `keymaps.lua`: Global keybindings.
-   `lua/plugins/`: Each file contains the configuration for a specific plugin, managed by `lazy.nvim`.
-   `colors/`: A collection of custom color schemes.

## Keybindings

The leader key is set to `<Space>`.

### General & File

| Keybinding      | Description                         |
| --------------- | ----------------------------------- |
| `<C-s>`         | Save file                           |
| `<leader>sn`    | Save file without auto-formatting   |
| `<C-q>`         | Quit                                |
| `<leader>x`     | Close current buffer                |
| `<leader>b`     | Create a new buffer                 |
| `<leader>lw`    | Toggle line wrapping                |

### Navigation & Window Management

| Keybinding      | Description                         |
| --------------- | ----------------------------------- |
| `<C-h/j/k/l>`   | Navigate between window splits      |
| `<Tab>`         | Next buffer                         |
| `<S-Tab>`       | Previous buffer                     |
| `<leader>v`     | Split window vertically             |
| `<leader>h`     | Split window horizontally           |
| `<leader>xs`    | Close current split window          |
| `<leader>to`    | Open new tab                        |
| `<leader>tx`    | Close current tab                   |
| `<leader>tn`    | Go to next tab                      |
| `<leader>tp`    | Go to previous tab                  |

### Telescope (Fuzzy Finder)

| Keybinding        | Description                           |
| ----------------- | ------------------------------------- |
| `<leader>sf`      | **S**earch **F**iles                  |
| `<leader>sg`      | **S**earch by **G**rep (live)         |
| `<leader>sw`      | **S**earch current **W**ord           |
| `<leader><leader>` | Find existing buffers                 |
| `<leader>sh`      | **S**earch **H**elp tags              |
| `<leader>sk`      | **S**earch **K**eymaps                |
| `<leader>sd`      | **S**earch **D**iagnostics            |
| `<leader>su`      | Git Stat**u**s                        |
| `<leader>s.`      | **S**earch Recent Files               |
| `<leader>sm`      | **S**earch **M**embers/Symbols in file|
| `<leader>sS`      | **S**earch **S**ymbols in workspace   |

### LSP, Formatting & AI

| Keybinding      | Description                         |
| --------------- | ----------------------------------- |
| `gl`            | Show float diagnostic               |
| `[d` / `]d`      | Go to previous/next diagnostic      |
| `<leader>p`     | Format code with Prettier           |
| `<leader>zc`    | Open Copilot **C**hat               |
| `<leader>ze`    | **E**xplain code with Copilot       |
| `<leader>zf`    | **F**ix code with Copilot           |
| `<leader>zt`    | Generate **T**ests with Copilot     |
| `<leader>lg`    | Open **L**azy**G**it                |

### Debugging (DAP)

| Keybinding | Description                  |
| ---------- | ---------------------------- |
| `<F1>`     | Continue                     |
| `<F2>`     | Step Into                    |
| `<F3>`     | Step Over                    |
| `<F4>`     | Step Out                     |
| `<Space>b` | Toggle Breakpoint            |
| `<Space>?` | Evaluate variable under cursor|