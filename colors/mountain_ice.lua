-- Arquivo: ~/.config/nvim/colors/mountain_ice.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "mountain_ice"

-- Paleta Mountain Ice (claro)
local colors = {
	-- Base clara com tons frios
	white = "#f8fafc",
	ice = "#e0f2fe",
	light_ice = "#bae6fd",
	blue_ice = "#7dd3fc",
	sky_blue = "#38bdf8",
	azure = "#0ea5e9",
	blue = "#2563eb",
	indigo = "#6366f1",
	gray = "#94a3b8",
	medium_gray = "#64748b",
	dark_gray = "#334155",
	black = "#0f172a",

	-- Complementares
	teal = "#14b8a6",
	cyan = "#06b6d4",
	mint = "#99f6e4",
	emerald = "#10b981",
	rose = "#f43f5e",
	yellow = "#facc15",
	orange = "#fb923c",

	-- Estados especiais
	cursor_line = "#e0e7ef",
	selection = "#bae6fd",
	search = "#fef08a",
	active_search = "#fde047",

	-- Diagnósticos
	error = "#ef4444",
	warning = "#f59e0b",
	info = "#0ea5e9",
	hint = "#8b5cf6",
	success = "#10b981",
}

local highlights = {
	Normal = { fg = colors.black, bg = colors.white },
	NormalFloat = { fg = colors.black, bg = colors.ice },
	NormalNC = { fg = colors.medium_gray, bg = colors.white },

	Cursor = { fg = colors.white, bg = colors.azure },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.sky_blue, bg = colors.cursor_line, bold = true },

	LineNr = { fg = colors.medium_gray },
	SignColumn = { bg = colors.white },

	Visual = { fg = colors.black, bg = colors.selection },
	VisualNOS = { fg = colors.black, bg = colors.selection },

	Search = { fg = colors.black, bg = colors.search },
	IncSearch = { fg = colors.black, bg = colors.active_search },

	VertSplit = { fg = colors.blue_ice },
	WinSeparator = { fg = colors.blue_ice },
	FloatBorder = { fg = colors.azure },

	StatusLine = { fg = colors.white, bg = colors.blue, bold = true },
	StatusLineNC = { fg = colors.gray, bg = colors.ice },

	TabLine = { fg = colors.gray, bg = colors.ice },
	TabLineFill = { bg = colors.ice },
	TabLineSel = { fg = colors.white, bg = colors.blue, bold = true },

	Pmenu = { fg = colors.black, bg = colors.ice },
	PmenuSel = { fg = colors.white, bg = colors.azure },
	PmenuSbar = { bg = colors.blue_ice },
	PmenuThumb = { bg = colors.sky_blue },

	Comment = { fg = colors.gray, italic = true },
	Constant = { fg = colors.blue_ice, bold = true },
	String = { fg = colors.emerald },
	Number = { fg = colors.sky_blue, bold = true },
	Boolean = { fg = colors.azure, bold = true },
	Identifier = { fg = colors.black },
	Function = { fg = colors.cyan, bold = true },
	Statement = { fg = colors.blue, bold = true },
	Operator = { fg = colors.indigo },
	Keyword = { fg = colors.blue, bold = true },
	Type = { fg = colors.cyan, bold = true },

	DiagnosticError = { fg = colors.error, bold = true },
	DiagnosticWarn = { fg = colors.warning },
	DiagnosticInfo = { fg = colors.info },
	DiagnosticHint = { fg = colors.hint },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

	GitSignsAdd = { fg = colors.emerald, bold = true },
	GitSignsChange = { fg = colors.teal, bold = true },
	GitSignsDelete = { fg = colors.rose, bold = true },

	DiffAdd = { fg = colors.emerald, bg = colors.ice },
	DiffChange = { fg = colors.teal, bg = colors.ice },
	DiffDelete = { fg = colors.rose, bg = colors.ice },
	DiffText = { fg = colors.white, bg = colors.sky_blue },

	ErrorMsg = { fg = colors.error, bold = true },
	WarningMsg = { fg = colors.warning, bold = true },
	MoreMsg = { fg = colors.emerald, bold = true },
	Question = { fg = colors.cyan, bold = true },
	Directory = { fg = colors.blue, bold = true },
	Title = { fg = colors.azure, bold = true },
	NonText = { fg = colors.gray },
	SpecialKey = { fg = colors.blue_ice },
	Folded = { fg = colors.blue_ice, bg = colors.ice, bold = true },
	FoldColumn = { fg = colors.blue_ice },
	WildMenu = { fg = colors.white, bg = colors.azure, bold = true },
}

for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

vim.opt.termguicolors = true
vim.opt.background = "light"

vim.g.terminal_color_0 = colors.white
vim.g.terminal_color_1 = colors.rose
vim.g.terminal_color_2 = colors.emerald
vim.g.terminal_color_3 = colors.yellow
vim.g.terminal_color_4 = colors.blue
vim.g.terminal_color_5 = colors.indigo
vim.g.terminal_color_6 = colors.teal
vim.g.terminal_color_7 = colors.black
vim.g.terminal_color_8 = colors.gray
vim.g.terminal_color_9 = colors.sky_blue
vim.g.terminal_color_10 = colors.mint
vim.g.terminal_color_11 = colors.orange
vim.g.terminal_color_12 = colors.cyan
vim.g.terminal_color_13 = colors.blue_ice
vim.g.terminal_color_14 = colors.light_ice
vim.g.terminal_color_15 = colors.ice
