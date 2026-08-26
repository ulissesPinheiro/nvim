-- Arquivo: ~/.config/nvim/colors/violet.lua
---@diagnostic disable: undefined-global
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "violet"

-- Paleta Violet (escura)
local colors = {
	-- Base
	background = "#1a1626",
	bg_alt = "#221c30",
	cursor_line = "#262036",
	selection = "#332a47",
	foreground = "#e4dced",

	-- Acentos principais
	accent = "#9878c4",
	comment = "#736b85",
	keyword = "#b08ad6",
	type = "#407ba8",
	["function"] = "#a899d9",
	string = "#db5cbe",
	number = "#d9a06b",

	-- Diagnósticos / git
	error = "#e05c6e",
	warning = "#d9b169",
	added = "#8cc98c",
	removed = "#e05c6e",
	info = "#788bc4",
	hint = "#c478a4",

	-- Paleta ANSI
	black = "#6d6778",
	red = "#e05c6e",
	green = "#8cc98c",
	yellow = "#d9b169",
	blue = "#9878c4",
	magenta = "#c478a4",
	cyan = "#788bc4",
	white = "#e4dced",
	bright_black = "#736b85",
	bright_red = "#e78492",
	bright_green = "#a8d6a8",
	bright_yellow = "#e2c48e",
	bright_blue = "#b199d2",
	bright_magenta = "#d299ba",
	bright_cyan = "#99a8d2",
	bright_white = "#eae4f1",
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

	Search = { fg = colors.background, bg = colors.warning },
	IncSearch = { fg = colors.background, bg = colors.number },

	VertSplit = { fg = colors.selection },
	WinSeparator = { fg = colors.selection },
	FloatBorder = { fg = colors.accent },

	StatusLine = { fg = colors.foreground, bg = colors.selection, bold = true },
	StatusLineNC = { fg = colors.comment, bg = colors.bg_alt },

	TabLine = { fg = colors.comment, bg = colors.bg_alt },
	TabLineFill = { bg = colors.bg_alt },
	TabLineSel = { fg = colors.foreground, bg = colors.accent, bold = true },

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
vim.opt.background = "dark"

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
