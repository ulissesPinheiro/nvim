# Visão Geral da Configuração Neovim

Esta é uma configuração modular do Neovim baseada em Lua, utilizando o gerenciador de plugins `lazy.nvim`. A estrutura é projetada para ser limpa, organizada e fácil de estender.

## Estrutura de Diretórios

- **`init.lua`**: O ponto de entrada principal que carrega as configurações do core e inicializa o `lazy.nvim`.
- **`lua/core/`**: Contém as configurações base do editor.
  - `options.lua`: Configurações globais do Vim (indentação, busca, clipboard, etc.).
  - `keymaps.lua`: Mapeamentos de teclas globais para uma experiência de edição aprimorada.
- **`lua/plugins/`**: Cada arquivo corresponde à configuração de um plugin específico, mantendo o setup modular.
- **`colors/`**: Armazena uma coleção de temas de cores personalizados em Lua.
- **`lazy-lock.json`**: Arquivo de bloqueio do `lazy.nvim` que garante a consistência das versões dos plugins.

## Core da Configuração

### Opções (`lua/core/options.lua`)

As opções principais visam uma experiência de desenvolvimento moderna:
- **Clipboard**: Sincronizado com o clipboard do sistema (`unnamedplus`).
- **Indentação**: Usa 4 espaços, convertendo tabs em espaços.
- **Busca**: `smartcase` e `ignorecase` para buscas flexíveis.
- **Interface**: Habilita `termguicolors`, números de linha relativos e uma `signcolumn` sempre visível.
- **Histórico**: Mantém um histórico de "undo" persistente.
- **Quebra de Linha**: Habilitada com `breakindent` para manter a indentação visualmente correta.

### Mapeamentos de Teclas (`lua/core/keymaps.lua`)

A tecla `Líder` está mapeada para `<Space>`. Alguns atalhos notáveis:

| Atalho             | Ação                                           |
| ------------------ | ---------------------------------------------- |
| `<C-s>`            | Salvar o arquivo atual (`:w`)                  |
| `<C-q>`            | Fechar o arquivo atual (`:q`)                  |
| `<Tab>` / `<S-Tab>`| Navegar entre buffers (próximo/anterior)       |
| `<leader>x`        | Fechar o buffer atual (`:Bdelete!`)            |
| `<leader>v` / `h`  | Dividir a janela (vertical/horizontal)         |
| `<C-h/j/k/l>`      | Navegar entre as janelas divididas             |
| `<leader>e`        | Abrir/revelar o arquivo no Neo-tree            |
| `<leader>p`        | Formatar com Prettier                          |
| `<leader>gs`       | Ver status do Git com Telescope                |
| `<leader>sf`       | Buscar arquivos com Telescope (`find_files`)   |
| `<leader>sg`       | Buscar por texto no projeto (`live_grep`)      |
| `gd`, `gr`, `gI`   | Ações LSP (Ir para Definição, Referências, etc.) |
| `<leader>lg`       | Abrir o `LazyGit`                              |

## Plugins

A configuração utiliza `lazy.nvim` para gerenciar os plugins. As configurações estão no diretório `lua/plugins/`.

### UI & Aparência
- **`alpha-nvim`**: Uma tela de início customizável.
- **`bufferline.nvim`**: Exibe os buffers abertos como abas.
- **`lualine.nvim`**: Uma statusline leve e configurável.
- **`indent-blankline.nvim`**: Adiciona guias de indentação.
- **`which-key.nvim`**: Mostra um pop-up com os atalhos de tecla disponíveis.
- **`nvim-colorizer.lua`**: Realça códigos de cores (ex: `#ffffff`).

### Funcionalidades de Código
- **`nvim-lspconfig`**: O motor principal para configurar o Language Server Protocol (LSP).
- **`mason.nvim`**: Gerencia a instalação de LSPs, formatadores e linters.
- **`nvim-cmp`**: Engine de autocompletar com suporte a LSP, snippets e mais.
- **`LuaSnip`**: Gerenciador de snippets.
- **`nvim-treesitter`**: Fornece syntax highlighting mais preciso e rápido.
- **`conform.nvim`**: Um formatador de código plugável, configurado para `prettier`, `stylua`, `black` e `isort`.
- **`nvim-ts-autotag`**: Fecha tags HTML/XML automaticamente.
- **`nvim-autopairs`**: Insere e fecha parênteses, colchetes e aspas automaticamente.

### Git
- **`gitsigns.nvim`**: Mostra os diffs do Git na `signcolumn`.
- **`vim-fugitive`**: Uma poderosa integração com o Git.
- **`lazygit.nvim`**: Interface de terminal para o Git.

### Utilitários
- **`telescope.nvim`**: Um fuzzy finder poderoso para buscar arquivos, texto, comandos e mais.
- **`neo-tree.nvim`**: Um explorador de arquivos moderno.
- **`todo-comments.nvim`**: Destaca comentários como `TODO`, `FIXME`, etc.

## Temas de Cores (`colors/`)

Este setup inclui uma coleção de temas de cores personalizados, localizados no diretório `colors/`. O tema padrão é **vucano**, definido no `init.lua`.

Temas disponíveis:
- `blood_light`: Tema claro com ênfase em tons de vermelho.
- `forest_light`: Tema claro inspirado em cores de floresta, com verdes e tons terrosos.
- `midnight_ocean`: Tema escuro com cores que remetem ao oceano à meia-noite.
- `mountain_ice`: Tema claro com uma paleta fria de azuis e brancos.
- `nord`: Um port do popular tema Nord (escuro).
- `vucano`: Tema escuro e quente, inspirado em lava e rochas vulcânicas.
- `white_agressive`: Tema claro de alto contraste com cores vibrantes e agressivas.

Para trocar de tema, mude a linha `vim.cmd.colorscheme("vucano")` no final do arquivo `init.lua` para o nome do tema desejado.
