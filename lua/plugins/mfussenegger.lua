return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"williamboman/mason.nvim",
		},
		config = function()
			local dap = require("dap")
			local ui = require("dapui")

			require("nvim-dap-virtual-text").setup()
			require("dapui").setup({
				layouts = {
					{
						elements = {
							{ id = "console", size = 0.7 },
							{ id = "scopes", size = 0.3 },
						},
						size = 60,
						position = "left",
					},
				},
			})

			require("dap").adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					-- 💀 Make sure to update this path to point to your installation
					args = {
						vim.fn.stdpath("data") .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
						"${port}",
					},
				},
			}
			dap.configurations.typescript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					runtimeExecutable = "deno",
					runtimeArgs = {
						"run",
						"--inspect-wait",
						"--allow-all",
					},
					program = "${file}",
					cwd = "${workspaceFolder}",
					attachSimplePort = 9229,
				},
				{
					type = "pwa-node",
					request = "launch",
					name = "Debug NestJS (Start)",
					program = "${workspaceFolder}/src/main.ts", -- Ponto de entrada do NestJS
					cwd = "${workspaceFolder}",
					runtimeExecutable = "yarn", -- Ou "npm" se preferir
					runtimeArgs = { "start:dev" }, -- Usando o script de desenvolvimento
					console = "integratedTerminal",
					sourceMaps = true,
					skipFiles = { "<node_internals>/**" },
				},
			}
			dap.configurations.typescriptreact = {
				{
					-- Depuração do servidor de desenvolvimento (ex: Vite, Next.js, etc.)
					name = "Launch Dev Remote Server",
					type = "pwa-node",
					request = "launch",
					runtimeExecutable = "yarn", -- ou "yarn"
					runtimeArgs = { "dev", "--port", "8080" }, -- ajuste para seu script
					cwd = "${workspaceFolder}",
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
					skipFiles = { "<node_internals>/**" },
					outFiles = { "${workspaceFolder}/dist/**/*.js" },
				},
				{
					-- Depuração do servidor de desenvolvimento (ex: Vite, Next.js, etc.)
					name = "Launch Dev Local Server",
					type = "pwa-node",
					request = "launch",
					runtimeExecutable = "yarn", -- ou "yarn"
					runtimeArgs = { "dev" }, -- ajuste para seu script
					cwd = "${workspaceFolder}",
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
					skipFiles = { "<node_internals>/**" },
					outFiles = { "${workspaceFolder}/dist/**/*.js" },
				},
				{
					-- Depuração de arquivos específicos do React
					name = "Debug React Component",
					type = "pwa-node",
					request = "launch",
					program = "${file}",
					cwd = "${workspaceFolder}",
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
				},
			}
			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
	{
		"mfussenegger/nvim-jdtls",
		ft = "java",
		config = function()
			local jdtls = require("jdtls")
			local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
			local root_dir = require("jdtls.setup").find_root(root_markers)
			if not root_dir then
				return
			end

			local jdtls_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
			local lombok_path = vim.fn.stdpath("config") .. "/third_party/lombok.jar"

			local project_name = vim.fn.fnamemodify(root_dir, ":t")
			local workspace_dir = vim.fn.stdpath("cache") .. "/jdtls/workspace/" .. project_name

			local launcher_jar = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
			if launcher_jar == "" then
				return
			end

			local config = {
				cmd = {
					"java",
					"-javaagent:" .. lombok_path,
					"-Declipse.application=org.eclipse.jdt.ls.core.id1",
					"-Dosgi.bundles.defaultStartLevel=4",
					"-Declipse.product=org.eclipse.jdt.ls.core.product",
					"-Dlog.protocol=true",
					"-Dlog.level=ALL",
					"-Xms1g",
					"--add-opens",
					"java.base/java.util=ALL-UNNAMED",
					"--add-opens",
					"java.base/java.lang=ALL-UNNAMED",
					"-jar",
					launcher_jar,
					"-configuration",
					jdtls_path .. "/config_linux",
					"-data",
					workspace_dir,
				},
				root_dir = root_dir,
			}

			jdtls.start_or_attach(config)
		end,
	},
}
