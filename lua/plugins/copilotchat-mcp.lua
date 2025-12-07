return {
	"HakonHarnes/mcp.nvim",
	dependencies = { "CopilotC-Nvim/CopilotChat.nvim" },
	config = function()
		local mcp = require("mcp")
		mcp.register_menu("CopilotChat Prompts", {
			{
				"Explicar código",
				function()
					vim.cmd("CopilotChat explain")
				end,
			},
			{
				"Refatorar",
				function()
					vim.cmd("CopilotChat refactor")
				end,
			},
			-- Adicione mais prompts conforme necessário
		})
		-- Mapeie uma tecla para abrir o menu MCP
		vim.keymap.set("n", "<leader>cp", function()
			mcp.open_menu("CopilotChat Prompts")
		end, { desc = "CopilotChat Prompts" })
	end,
}
