return {
	"schrieveslaach/sonarlint.nvim",
	dependencies = {
		"mfussenegger/nvim-jdtls",
	},
	config = function()
		local sonarlint_home = vim.fn.stdpath("config")
		require("sonarlint").setup({
			server = {
				cmd = {
					"java",
					"-jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/server/sonarlint-ls.jar",
					"-stdio",
					"-analyzers",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/csharpenterprise.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarcsharp.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonargo.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarhtml.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonariac.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarjava.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarjavasymbolicexecution.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarjs.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarlintomnisharp.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarphp.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarpython.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonartext.jar",
					sonarlint_home .. "/third_party/sonarlint-vscode/analyzers/sonarxml.jar",
				},
			},
			filetypes = {
				"c",
				"cpp",
				"go",
				"html",
				"java",
				"javascript",
				"javascriptreact",
				"typescript",
				"typescriptreact",
				"php",
				"python",
				"xml",
				"terraform",
				"tfvars",
				"yaml",
				"csharp",
			},
		})
	end,
}
