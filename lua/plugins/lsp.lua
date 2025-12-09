return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()



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
            capabilities = capabilities,
        })
        vim.lsp.enable('html')

        -- Configure and enable jdtls
        vim.lsp.config('jdtls', {
            capabilities = capabilities,
            cmd = {"/home/ulisses/Workspace/jdt-server/bin/jdtls"},
            root_dir = vim.fs.root(0, {'gradlew', '.git', 'mvnw'}),
            settings = {
                java = {
                }
            },
            init_options = {
                bundles = {}
            },
        })
        vim.lsp.enable('jdtls')
    end,
}
