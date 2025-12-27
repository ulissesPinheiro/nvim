return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
		{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
	},
	build = "make tiktoken", -- Only on MacOS or Linux
	lazy = false,
	opts = {
		prompts = {
			GitCommitPtBr = {
				prompt = "Write a commit message for the staged changes using the commitizen convention. The title should be at most 50 characters, and the body should be wrapped at 72 characters. Wrap the whole message in a code block with language gitcommit in Portugues-BR.",
			},
		},
	},
}
