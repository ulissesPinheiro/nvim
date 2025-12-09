return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Defines the keymaps and settings to be used for each LSP server
        local on_attach = function(client, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }
            -- Go to definition
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            -- Go to type definition
            vim.keymap.set("n", "gD", vim.lsp.buf.type_definition, opts)
            -- Go to declaration
            vim.keymap.set("n", "gds", vim.lsp.buf.declaration, opts)
            -- Go to implementation
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
            -- Go to references
            vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
            -- Show documentation for the word under the cursor
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            -- Rename symbol
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
            -- Code action
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
            -- Format current buffer
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { buffer = bufnr })
            -- Show diagnostics for current line
            vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
            vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
        end

        -- Configure LSP diagnostic signs
        vim.diagnostic.config({
            virtual_text = true,
            signs = true,
            update_in_insert = false,
            float = {
                source = "always",
            },
        })

        -- Configure and enable lua_ls
        vim.lsp.config('lua_ls', {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                Lua = {
                    runtime = {
                        version = "LuaJIT",
                    },
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })
        vim.lsp.enable('lua_ls')

        -- Configure and enable html
        vim.lsp.config('html', {
            on_attach = on_attach,
            capabilities = capabilities,
        })
        vim.lsp.enable('html')
    end,
}
