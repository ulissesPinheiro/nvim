-- Arquivo: ~/.config/nvim/colors/vucano.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "vucano"

-- Paleta Vucano (escuro, quente, inspirado em lava e rocha vulcânica)
local colors = {
	-- Base escura
	bg = "#18120a",
	bg_alt = "#24180f",
	bg_float = "#2d1a0b",
	bg_visual = "#4b2e13",
	bg_cursor = "#23201c",

	-- Texto e contraste
	fg = "#e7dacb",
	fg_dim = "#a89c94",
	fg_light = "#f8f6f2",

	-- Tons de lava
	lava_red = "#ff4500",
	ember = "#ff7f11",
	magma = "#ffae42",
	volcano_y = "#ffd700",

	-- Complementares
	rock = "#6e6259",
	coal = "#3a2c23",
	obsidian = "#23201c",
	purple = "#a259f7",

	-- Diagnóstico
	error = "#ff4b4b",
	warning = "#ffae42",
	info = "#ffd700",
	hint = "#a259f7",
	success = "#27ae60",
}

local highlights = {
	Normal = { fg = colors.fg, bg = colors.bg },
	NormalNC = { fg = colors.fg_dim, bg = colors.bg },
	NormalFloat = { fg = colors.fg, bg = colors.bg_float },

	Cursor = { fg = colors.bg, bg = colors.lava_red },
	CursorLine = { bg = colors.bg_cursor },
	CursorColumn = { bg = colors.bg_cursor },
	CursorLineNr = { fg = colors.volcano_y, bg = colors.bg_cursor, bold = true },

	LineNr = { fg = colors.rock },
	SignColumn = { bg = colors.bg },

	Visual = { bg = colors.bg_visual },
	VisualNOS = { bg = colors.bg_visual },

	Search = { fg = colors.bg, bg = colors.magma, bold = true },
	IncSearch = { fg = colors.bg, bg = colors.volcano_y, bold = true },

	VertSplit = { fg = colors.rock },
	WinSeparator = { fg = colors.rock },
	FloatBorder = { fg = colors.lava_red },

	StatusLine = { fg = colors.fg_light, bg = colors.lava_red, bold = true },
	StatusLineNC = { fg = colors.fg_dim, bg = colors.bg_float },

	TabLine = { fg = colors.fg_dim, bg = colors.bg_float },
	TabLineFill = { bg = colors.bg_float },
	TabLineSel = { fg = colors.fg_light, bg = colors.lava_red, bold = true },

	Pmenu = { fg = colors.fg, bg = colors.bg_float },
	PmenuSel = { fg = colors.fg_light, bg = colors.lava_red },
	PmenuSbar = { bg = colors.rock },
	PmenuThumb = { bg = colors.ember },

	Comment = { fg = colors.rock, italic = true },
	Constant = { fg = colors.volcano_y, bold = true },
	String = { fg = colors.magma },
	Number = { fg = colors.volcano_y, bold = true },
	Boolean = { fg = colors.lava_red, bold = true },
	Identifier = { fg = colors.fg },
	Function = { fg = colors.ember, bold = true },
	Statement = { fg = colors.lava_red, bold = true },
	Operator = { fg = colors.purple },
	Keyword = { fg = colors.lava_red, bold = true },
	Type = { fg = colors.volcano_y, bold = true },

	DiagnosticError = { fg = colors.error, bold = true },
	DiagnosticWarn = { fg = colors.warning },
	DiagnosticInfo = { fg = colors.info },
	DiagnosticHint = { fg = colors.hint },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

	GitSignsAdd = { fg = colors.success, bold = true },
	GitSignsChange = { fg = colors.magma, bold = true },
	GitSignsDelete = { fg = colors.lava_red, bold = true },

	DiffAdd = { fg = colors.success, bg = colors.bg_float },
	DiffChange = { fg = colors.magma, bg = colors.bg_float },
	DiffDelete = { fg = colors.lava_red, bg = colors.bg_float },
	DiffText = { fg = colors.fg_light, bg = colors.ember },

	ErrorMsg = { fg = colors.error, bold = true },
	WarningMsg = { fg = colors.warning, bold = true },
	MoreMsg = { fg = colors.success, bold = true },
	Question = { fg = colors.info, bold = true },
	Directory = { fg = colors.lava_red, bold = true },
	Title = { fg = colors.volcano_y, bold = true },
	NonText = { fg = colors.rock },
	SpecialKey = { fg = colors.purple },
	Folded = { fg = colors.fg_dim, bg = colors.bg_float, bold = true },
	FoldColumn = { fg = colors.rock },
	WildMenu = { fg = colors.fg_light, bg = colors.lava_red, bold = true },
	WildMenu = { fg = colors.fg_light, bg = colors.lava_red, bold = true },

	-- Additional syntax highlighting
	Special = { fg = colors.magma },
	PreProc = { fg = colors.ember },
	Todo = { fg = colors.volcano_y, bg = colors.bg_float, bold = true },
	Error = { fg = colors.error, bg = colors.bg, bold = true },
}

for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

vim.opt.termguicolors = true
vim.opt.background = "dark"

vim.g.terminal_color_0 = colors.bg
vim.g.terminal_color_1 = colors.lava_red
vim.g.terminal_color_2 = colors.success
vim.g.terminal_color_3 = colors.volcano_y
vim.g.terminal_color_4 = colors.ember
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.magma
vim.g.terminal_color_7 = colors.fg_light
vim.g.terminal_color_8 = colors.fg_dim
vim.g.terminal_color_9 = colors.lava_red
vim.g.terminal_color_10 = colors.success
vim.g.terminal_color_11 = colors.volcano_y
vim.g.terminal_color_12 = colors.ember
vim.g.terminal_color_13 = colors.purple
vim.g.terminal_color_14 = colors.magma
vim.g.terminal_color_15 = colors.fg
