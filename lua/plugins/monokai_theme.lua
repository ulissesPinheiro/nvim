return {
	{
		"loctvl842/monokai-pro.nvim",
		lazy = true,
		priority = 1000,
		opts = {
			transparent_background = false,
			terminal_colors = true,
			devicons = true,
			filter = "pro",
			inc_search = "background",
			background_clear = {
				"toggleterm",
				"telescope",
				"renamer",
				"notify",
			},
			plugins = {
				bufferline = {
					underline_selected = false,
					underline_visible = false,
				},
				indent_blankline = {
					context_highlight = "default",
					context_start_underline = false,
				},
			},
		},
		config = function(_, opts)
			require("monokai-pro").setup(opts)
		end,
	},
	{
		"monokai-charcoal-yellow",
		dir = vim.fn.stdpath("config"),
		lazy = false,
		priority = 1000,
		config = function()
			require("colors.monokai_charcoal_yellow").setup()
			-- vim.cmd("colorscheme monokai-charcoal-yellow")
		end,
	},
}
