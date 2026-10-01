-- Arquivo: ~/.config/nvim/colors/violet_light.lua
---@diagnostic disable: undefined-global
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "violet_light"

-- Paleta Violet (clara)
local colors = {
	-- Base
	background = "#faf7fd",
	bg_alt = "#f1e9f8",
	cursor_line = "#ece2f4",
	selection = "#ddc9ef",
	foreground = "#2e2438",

	-- Acentos principais
	accent = "#7c3aab",
	comment = "#8d81a0",
	keyword = "#8e44ad",
	type = "#2a6f97",
	["function"] = "#6a3d9a",
	string = "#a8348f",
	number = "#b5651d",

	-- Diagnósticos / git
	error = "#c0392b",
	warning = "#b7791f",
	added = "#2d7d2d",
	removed = "#c0392b",
	info = "#3b5bdb",
	hint = "#a8336b",

	-- Paleta ANSI
	black = "#4a4458",
	red = "#c0392b",
	green = "#2d7d2d",
	yellow = "#b7791f",
	blue = "#7c3aab",
	magenta = "#a8336b",
	cyan = "#3b5bdb",
	white = "#faf7fd",
	bright_black = "#8d81a0",
	bright_red = "#d9584a",
	bright_green = "#4a9a4a",
	bright_yellow = "#d19536",
	bright_blue = "#9a5cc4",
	bright_magenta = "#c4568e",
	bright_cyan = "#5c78e0",
	bright_white = "#ffffff",
}

local highlights = {
	Normal = { fg = colors.foreground, bg = colors.background },
	NormalFloat = { fg = colors.foreground, bg = colors.bg_alt },
	NormalNC = { fg = colors.foreground, bg = colors.background },

	Cursor = { fg = colors.background, bg = colors.accent },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.keyword, bg = colors.cursor_line, bold = true },

	LineNr = { fg = colors.comment },
	SignColumn = { bg = colors.background },

	Visual = { fg = colors.foreground, bg = colors.selection },
	VisualNOS = { fg = colors.foreground, bg = colors.selection },

	Search = { fg = colors.foreground, bg = colors.warning },
	IncSearch = { fg = colors.background, bg = colors.number },

	VertSplit = { fg = colors.selection },
	WinSeparator = { fg = colors.selection },
	FloatBorder = { fg = colors.accent },

	StatusLine = { fg = colors.background, bg = colors.accent, bold = true },
	StatusLineNC = { fg = colors.comment, bg = colors.bg_alt },

	TabLine = { fg = colors.comment, bg = colors.bg_alt },
	TabLineFill = { bg = colors.bg_alt },
	TabLineSel = { fg = colors.background, bg = colors.accent, bold = true },

	Pmenu = { fg = colors.foreground, bg = colors.bg_alt },
	PmenuSel = { fg = colors.background, bg = colors.accent, bold = true },
	PmenuSbar = { bg = colors.selection },
	PmenuThumb = { bg = colors.accent },

	Comment = { fg = colors.comment, italic = true },
	Constant = { fg = colors.number, bold = true },
	String = { fg = colors.string },
	Number = { fg = colors.number, bold = true },
	Boolean = { fg = colors.keyword, bold = true },
	Identifier = { fg = colors.foreground },
	Function = { fg = colors["function"], bold = true },
	Statement = { fg = colors.keyword, bold = true },
	Operator = { fg = colors.accent },
	Keyword = { fg = colors.keyword, bold = true },
	Type = { fg = colors.type, bold = true },

	DiagnosticError = { fg = colors.error, bold = true },
	DiagnosticWarn = { fg = colors.warning },
	DiagnosticInfo = { fg = colors.info },
	DiagnosticHint = { fg = colors.hint },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

	GitSignsAdd = { fg = colors.added, bold = true },
	GitSignsChange = { fg = colors.warning, bold = true },
	GitSignsDelete = { fg = colors.removed, bold = true },

	DiffAdd = { fg = colors.added, bg = colors.bg_alt },
	DiffChange = { fg = colors.warning, bg = colors.bg_alt },
	DiffDelete = { fg = colors.removed, bg = colors.bg_alt },
	DiffText = { fg = colors.background, bg = colors.warning },

	ErrorMsg = { fg = colors.error, bold = true },
	WarningMsg = { fg = colors.warning, bold = true },
	MoreMsg = { fg = colors.added, bold = true },
	Question = { fg = colors.type, bold = true },
	Directory = { fg = colors.accent, bold = true },
	Title = { fg = colors.keyword, bold = true },
	NonText = { fg = colors.comment },
	SpecialKey = { fg = colors.selection },
	Folded = { fg = colors.comment, bg = colors.bg_alt, bold = true },
	FoldColumn = { fg = colors.selection },
	WildMenu = { fg = colors.background, bg = colors.accent, bold = true },

	-- Extras
	Special = { fg = colors.hint },
	PreProc = { fg = colors.blue },
	Todo = { fg = colors.warning, bg = colors.bg_alt, bold = true },
	Error = { fg = colors.error, bg = colors.background, bold = true },
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "light"

-- Terminal colors (ANSI)
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.red
vim.g.terminal_color_2 = colors.green
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.magenta
vim.g.terminal_color_6 = colors.cyan
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.bright_black
vim.g.terminal_color_9 = colors.bright_red
vim.g.terminal_color_10 = colors.bright_green
vim.g.terminal_color_11 = colors.bright_yellow
vim.g.terminal_color_12 = colors.bright_blue
vim.g.terminal_color_13 = colors.bright_magenta
vim.g.terminal_color_14 = colors.bright_cyan
vim.g.terminal_color_15 = colors.bright_white
