-- Arquivo: ~/.config/nvim/colors/nord.lua
-- Nord Theme (Dark) for Neovim
-- https://www.nordtheme.com/docs/colors-and-palettes

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "nord"

-- Paleta Nord (escuro)
local colors = {
	-- Base escura
	nord0 = "#2E3440", -- Polar Night
	nord1 = "#3B4252", -- Polar Night
	nord2 = "#434C5E", -- Polar Night
	nord3 = "#4C566A", -- Polar Night

	-- Snow Storm
	nord4 = "#D8DEE9", -- Snow Storm
	nord5 = "#E5E9F0", -- Snow Storm
	nord6 = "#ECEFF4", -- Snow Storm

	-- Frost
	nord7 = "#8FBCBB", -- Frost
	nord8 = "#88C0D0", -- Frost
	nord9 = "#81A1C1", -- Frost
	nord10 = "#5E81AC", -- Frost

	-- Aurora
	nord11 = "#BF616A", -- Aurora Red
	nord12 = "#D08770", -- Aurora Orange
	nord13 = "#EBCB8B", -- Aurora Yellow
	nord14 = "#A3BE8C", -- Aurora Green
	nord15 = "#B48EAD", -- Aurora Purple

	-- Estados especiais
	cursor_line = "#3B4252",
	selection = "#434C5E",
	search = "#EBCB8B",
	active_search = "#D08770",

	-- Diagnósticos
	error = "#BF616A",
	warning = "#EBCB8B",
	info = "#88C0D0",
	hint = "#B48EAD",
	success = "#A3BE8C",
}

local highlights = {
	Normal = { fg = colors.nord4, bg = colors.nord0 },
	NormalFloat = { fg = colors.nord4, bg = colors.nord1 },
	NormalNC = { fg = colors.nord3, bg = colors.nord0 },

	Cursor = { fg = colors.nord0, bg = colors.nord8 },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.nord8, bg = colors.cursor_line, bold = true },

	LineNr = { fg = colors.nord3 },
	SignColumn = { bg = colors.nord0 },

	Visual = { fg = colors.nord4, bg = colors.selection },
	VisualNOS = { fg = colors.nord4, bg = colors.selection },

	Search = { fg = colors.nord0, bg = colors.search },
	IncSearch = { fg = colors.nord0, bg = colors.active_search },

	VertSplit = { fg = colors.nord2 },
	WinSeparator = { fg = colors.nord2 },
	FloatBorder = { fg = colors.nord8 },

	StatusLine = { fg = colors.nord4, bg = colors.nord2, bold = true },
	StatusLineNC = { fg = colors.nord3, bg = colors.nord1 },

	TabLine = { fg = colors.nord3, bg = colors.nord1 },
	TabLineFill = { bg = colors.nord1 },
	TabLineSel = { fg = colors.nord8, bg = colors.nord3, bold = true },

	Pmenu = { fg = colors.nord4, bg = colors.nord1 },
	PmenuSel = { fg = colors.nord0, bg = colors.nord8 },
	PmenuSbar = { bg = colors.nord2 },
	PmenuThumb = { bg = colors.nord8 },

	Comment = { fg = colors.nord3, italic = true },
	Constant = { fg = colors.nord7, bold = true },
	String = { fg = colors.nord14 },
	Number = { fg = colors.nord15, bold = true },
	Boolean = { fg = colors.nord9, bold = true },
	Identifier = { fg = colors.nord4 },
	Function = { fg = colors.nord8, bold = true },
	Statement = { fg = colors.nord9, bold = true },
	Operator = { fg = colors.nord9 },
	Keyword = { fg = colors.nord9, bold = true },
	Type = { fg = colors.nord7, bold = true },

	DiagnosticError = { fg = colors.error, bold = true },
	DiagnosticWarn = { fg = colors.warning },
	DiagnosticInfo = { fg = colors.info },
	DiagnosticHint = { fg = colors.hint },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

	GitSignsAdd = { fg = colors.nord14, bold = true },
	GitSignsChange = { fg = colors.nord13, bold = true },
	GitSignsDelete = { fg = colors.nord11, bold = true },

	DiffAdd = { fg = colors.nord14, bg = colors.nord1 },
	DiffChange = { fg = colors.nord13, bg = colors.nord1 },
	DiffDelete = { fg = colors.nord11, bg = colors.nord1 },
	DiffText = { fg = colors.nord0, bg = colors.nord8 },

	ErrorMsg = { fg = colors.error, bold = true },
	WarningMsg = { fg = colors.warning, bold = true },
	MoreMsg = { fg = colors.nord14, bold = true },
	Question = { fg = colors.nord8, bold = true },
	Directory = { fg = colors.nord9, bold = true },
	Title = { fg = colors.nord8, bold = true },
	NonText = { fg = colors.nord3 },
	SpecialKey = { fg = colors.nord7 },
	Folded = { fg = colors.nord7, bg = colors.nord1, bold = true },
	FoldColumn = { fg = colors.nord7 },
	WildMenu = { fg = colors.nord0, bg = colors.nord8, bold = true },

	-- Additional syntax highlighting
	Special = { fg = colors.nord13 },
	PreProc = { fg = colors.nord10 },
	Todo = { fg = colors.nord13, bg = colors.nord1, bold = true },
	Error = { fg = colors.nord11, bg = colors.nord0, bold = true },
}

for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Terminal colors
vim.g.terminal_color_0 = colors.nord0
vim.g.terminal_color_1 = colors.nord11
vim.g.terminal_color_2 = colors.nord14
vim.g.terminal_color_3 = colors.nord13
vim.g.terminal_color_4 = colors.nord9
vim.g.terminal_color_5 = colors.nord15
vim.g.terminal_color_6 = colors.nord8
vim.g.terminal_color_7 = colors.nord5
vim.g.terminal_color_8 = colors.nord3
vim.g.terminal_color_9 = colors.nord11
vim.g.terminal_color_10 = colors.nord14
vim.g.terminal_color_11 = colors.nord13
vim.g.terminal_color_12 = colors.nord9
vim.g.terminal_color_13 = colors.nord15
vim.g.terminal_color_14 = colors.nord7
vim.g.terminal_color_15 = colors.nord6
