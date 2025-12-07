-- Arquivo: ~/.config/nvim/colors/blood_light.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "blood_light"

-- Paleta sanguinária elegante
local colors = {
	-- Base clara com tons de vermelho
	white = "#fef9f9",
	cream = "#fdf5f5",
	light_rose = "#f9f0f0",
	pale_pink = "#f5e8e8",

	-- Cinzas quentes
	warm_gray = "#e8dede",
	medium_gray = "#d0c0c0",
	border_gray = "#c8b8b8",
	dark_gray = "#b0a0a0",

	-- Vermelhos sanguinários suaves
	blood_red = "#8b0000",
	crimson = "#a52a2a",
	dark_crimson = "#7a1f1f",
	wine_red = "#722f37",
	burgundy = "#800020",

	-- Vermelhos médios
	cherry = "#c42c4f",
	rose_red = "#d63384",
	coral = "#dc6b73",
	salmon = "#e49ca0",

	-- Complementares elegantes
	forest_green = "#2d5016",
	sage_green = "#87a96b",
	olive = "#6b8e23",
	teal = "#2f4f4f",
	navy = "#1e3a5f",
	indigo = "#4b0082",
	plum = "#8b008b",
	gold = "#b8860b",
	amber = "#d4af37",
	bronze = "#cd7f32",

	-- Textos
	black = "#2c1010",
	dark_text = "#3d1d1d",
	medium_text = "#5d3d3d",
	light_text = "#7d5d5d",

	-- Estados especiais
	cursor_line = "#fdf2f2",
	selection = "#f0d8d8",
	search = "#ffe0e6",
	active_search = "#ffb3c1",

	-- Diagnósticos
	error = "#b91c1c",
	warning = "#dc6b73",
	info = "#2f4f4f",
	hint = "#8b008b",
	success = "#2d5016",
}

local highlights = {
	-- === BASE SANGUINÁRIA ===
	Normal = { fg = colors.black, bg = colors.white },
	NormalFloat = { fg = colors.black, bg = colors.cream },
	NormalNC = { fg = colors.dark_text, bg = colors.white },

	-- === CURSOR ELEGANTE ===
	Cursor = { fg = colors.white, bg = colors.blood_red },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.crimson, bg = colors.cursor_line, bold = true },

	-- === NÚMEROS SUTIS ===
	LineNr = { fg = colors.light_text },
	SignColumn = { bg = colors.white },

	-- === SELEÇÃO SUAVE ===
	Visual = { fg = colors.black, bg = colors.selection },
	VisualNOS = { fg = colors.black, bg = colors.selection },

	-- === BUSCA DESTACADA ===
	Search = { fg = colors.black, bg = colors.search },
	IncSearch = { fg = colors.black, bg = colors.active_search },

	-- === BORDAS REFINADAS ===
	VertSplit = { fg = colors.coral },
	WinSeparator = { fg = colors.coral },
	FloatBorder = { fg = colors.crimson },
	NormalFloatBorder = { fg = colors.crimson },

	-- === STATUS SANGUINÁRIO ===
	StatusLine = { fg = colors.white, bg = colors.crimson, bold = true },
	StatusLineNC = { fg = colors.medium_text, bg = colors.warm_gray },

	-- === TABS ELEGANTES ===
	TabLine = { fg = colors.medium_text, bg = colors.pale_pink },
	TabLineFill = { bg = colors.warm_gray },
	TabLineSel = { fg = colors.white, bg = colors.crimson, bold = true },

	-- === MENU REFINADO ===
	Pmenu = { fg = colors.black, bg = colors.cream },
	PmenuSel = { fg = colors.white, bg = colors.crimson },
	PmenuSbar = { bg = colors.warm_gray },
	PmenuThumb = { bg = colors.coral },
	PmenuBorder = { fg = colors.crimson },

	-- === SYNTAX SANGUINÁRIO ===
	Comment = { fg = colors.light_text, italic = true },

	-- Constantes elegantes
	Constant = { fg = colors.plum, bold = true },
	String = { fg = colors.forest_green, bold = true },
	Character = { fg = colors.forest_green },
	Number = { fg = colors.indigo, bold = true },
	Boolean = { fg = colors.blood_red, bold = true },
	Float = { fg = colors.indigo, bold = true },

	-- Identificadores sutis
	Identifier = { fg = colors.black },
	Function = { fg = colors.navy, bold = true },

	-- Statements sanguinários
	Statement = { fg = colors.crimson, bold = true },
	Conditional = { fg = colors.blood_red, bold = true },
	Repeat = { fg = colors.wine_red, bold = true },
	Label = { fg = colors.burgundy, bold = true },
	Operator = { fg = colors.cherry, bold = false },
	Keyword = { fg = colors.crimson, bold = true },
	Exception = { fg = colors.dark_crimson, bold = true },

	-- Preprocessor elegante
	PreProc = { fg = colors.teal, bold = true },
	Include = { fg = colors.rose_red, bold = true },
	Define = { fg = colors.cherry, bold = true },
	Macro = { fg = colors.navy, bold = true },
	PreCondit = { fg = colors.indigo, bold = true },

	-- Types refinados
	Type = { fg = colors.navy, bold = true },
	StorageClass = { fg = colors.crimson, bold = true },
	Structure = { fg = colors.teal, bold = true },
	Typedef = { fg = colors.plum, bold = true },

	-- Special sanguinário
	Special = { fg = colors.bronze, bold = true },
	SpecialChar = { fg = colors.coral, bold = true },
	Tag = { fg = colors.crimson, bold = true },
	Delimiter = { fg = colors.black },
	SpecialComment = { fg = colors.wine_red, italic = true },
	Debug = { fg = colors.dark_crimson, bold = true },

	-- === TREESITTER ELEGANTE ===
	["@variable"] = { fg = colors.black },
	["@variable.builtin"] = { fg = colors.plum, bold = true },
	["@parameter"] = { fg = colors.coral, bold = false },
	["@field"] = { fg = colors.navy },
	["@property"] = { fg = colors.navy },

	["@function"] = { fg = colors.navy, bold = true },
	["@function.builtin"] = { fg = colors.teal, bold = true },
	["@method"] = { fg = colors.navy, bold = true },
	["@constructor"] = { fg = colors.plum, bold = true },

	["@keyword"] = { fg = colors.crimson, bold = true },
	["@keyword.function"] = { fg = colors.crimson, bold = true },
	["@keyword.operator"] = { fg = colors.cherry, bold = false },
	["@keyword.return"] = { fg = colors.blood_red, bold = true },

	["@type"] = { fg = colors.navy, bold = true },
	["@type.builtin"] = { fg = colors.teal, bold = true },
	["@namespace"] = { fg = colors.plum, bold = true },

	["@string"] = { fg = colors.forest_green },
	["@number"] = { fg = colors.indigo, bold = true },
	["@boolean"] = { fg = colors.blood_red, bold = true },

	["@operator"] = { fg = colors.cherry },
	["@punctuation.delimiter"] = { fg = colors.black },
	["@punctuation.bracket"] = { fg = colors.coral },

	["@tag"] = { fg = colors.crimson, bold = true },
	["@tag.attribute"] = { fg = colors.navy, bold = true },
	["@tag.delimiter"] = { fg = colors.black },

	-- === LSP DIAGNÓSTICOS ===
	DiagnosticError = { fg = colors.error, bold = true },
	DiagnosticWarn = { fg = colors.warning, bold = false },
	DiagnosticInfo = { fg = colors.info, bold = false },
	DiagnosticHint = { fg = colors.hint, bold = false },

	DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
	DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
	DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
	DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },

	LspReferenceText = { bg = colors.selection },
	LspReferenceRead = { bg = colors.selection },
	LspReferenceWrite = { bg = colors.selection, bold = true },

	-- === GIT SANGUINÁRIO ===
	GitSignsAdd = { fg = colors.sage_green, bold = true },
	GitSignsChange = { fg = colors.coral, bold = true },
	GitSignsDelete = { fg = colors.crimson, bold = true },

	DiffAdd = { fg = colors.forest_green, bg = colors.white },
	DiffChange = { fg = colors.coral, bg = colors.white },
	DiffDelete = { fg = colors.crimson, bg = colors.white },
	DiffText = { fg = colors.black, bg = colors.amber },

	-- === TELESCOPE ELEGANTE ===
	TelescopeBorder = { fg = colors.coral },
	TelescopePromptBorder = { fg = colors.crimson },
	TelescopeResultsBorder = { fg = colors.coral },
	TelescopePreviewBorder = { fg = colors.wine_red },
	TelescopePromptTitle = { fg = colors.white, bg = colors.crimson, bold = true },
	TelescopeResultsTitle = { fg = colors.white, bg = colors.coral, bold = true },
	TelescopePreviewTitle = { fg = colors.white, bg = colors.wine_red, bold = true },
	TelescopeSelection = { fg = colors.black, bg = colors.selection },
	TelescopeSelectionCaret = { fg = colors.crimson, bold = true },
	TelescopeMatching = { fg = colors.blood_red, bold = true },
	TelescopeNormal = { bg = colors.white },
	TelescopePromptNormal = { bg = colors.white },

	-- === NEO-TREE REFINADO ===
	NeoTreeNormal = { fg = colors.black, bg = colors.white },
	NeoTreeNormalNC = { fg = colors.black, bg = colors.white },
	NeoTreeWinSeparator = { fg = colors.coral },
	NeoTreeDirectoryIcon = { fg = colors.coral, bold = true },
	NeoTreeDirectoryName = { fg = colors.navy, bold = true },
	NeoTreeFileName = { fg = colors.black },
	NeoTreeFileIcon = { fg = colors.bronze },
	NeoTreeIndentMarker = { fg = colors.coral },
	NeoTreeExpander = { fg = colors.crimson, bold = true },
	NeoTreeModified = { fg = colors.rose_red, bold = true },
	NeoTreeGitAdded = { fg = colors.sage_green, bold = true },
	NeoTreeGitDeleted = { fg = colors.crimson, bold = true },
	NeoTreeGitModified = { fg = colors.coral, bold = true },
	NeoTreeRootName = { fg = colors.blood_red, bold = true },
	NeoTreeSymbolicLinkTarget = { fg = colors.teal },

	-- === CMP SANGUINÁRIO ===
	CmpItemAbbrDeprecated = { fg = colors.light_text, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.crimson, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.rose_red, bold = true },
	CmpItemKindVariable = { fg = colors.plum, bold = true },
	CmpItemKindInterface = { fg = colors.teal, bold = true },
	CmpItemKindText = { fg = colors.black },
	CmpItemKindFunction = { fg = colors.navy, bold = true },
	CmpItemKindMethod = { fg = colors.navy, bold = true },
	CmpItemKindKeyword = { fg = colors.crimson, bold = true },
	CmpItemKindProperty = { fg = colors.coral, bold = true },
	CmpItemKindUnit = { fg = colors.indigo, bold = true },
	CmpItemKindClass = { fg = colors.plum, bold = true },
	CmpItemKindModule = { fg = colors.navy, bold = true },
	CmpItemKindOperator = { fg = colors.cherry, bold = true },
	CmpItemKindReference = { fg = colors.wine_red, bold = true },
	CmpItemKindEnum = { fg = colors.teal, bold = true },
	CmpItemKindStruct = { fg = colors.navy, bold = true },
	CmpItemKindValue = { fg = colors.forest_green, bold = true },
	CmpItemKindEvent = { fg = colors.crimson, bold = true },
	CmpItemKindFile = { fg = colors.bronze },
	CmpItemKindFolder = { fg = colors.coral, bold = true },
	CmpItemKindSnippet = { fg = colors.gold, bold = true },
	CmpItemKindTypeParameter = { fg = colors.plum, bold = true },
	CmpItemKindConstant = { fg = colors.indigo, bold = true },
	CmpItemKindConstructor = { fg = colors.crimson, bold = true },
	CmpItemKindField = { fg = colors.navy },

	-- === EXTRAS ELEGANTES ===
	Error = { fg = colors.error, bold = true },
	ErrorMsg = { fg = colors.error, bold = true },
	WarningMsg = { fg = colors.warning, bold = true },
	MoreMsg = { fg = colors.sage_green, bold = true },
	Question = { fg = colors.navy, bold = true },
	Directory = { fg = colors.coral, bold = true },
	Title = { fg = colors.crimson, bold = true },
	NonText = { fg = colors.light_text },
	SpecialKey = { fg = colors.coral },
	Folded = { fg = colors.wine_red, bg = colors.pale_pink, bold = true },
	FoldColumn = { fg = colors.coral },
	WildMenu = { fg = colors.white, bg = colors.crimson, bold = true },
	SpellBad = { undercurl = true, sp = colors.error },
	SpellCap = { undercurl = true, sp = colors.warning },
	SpellLocal = { undercurl = true, sp = colors.info },
	SpellRare = { undercurl = true, sp = colors.hint },

	-- === LUALINE SANGUINÁRIA ===
	lualine_a_normal = { fg = colors.white, bg = colors.crimson, bold = true },
	lualine_b_normal = { fg = colors.crimson, bg = colors.warm_gray, bold = true },
	lualine_c_normal = { fg = colors.black, bg = colors.white },

	-- === WHICH-KEY ELEGANTE ===
	WhichKey = { fg = colors.crimson, bold = true },
	WhichKeyGroup = { fg = colors.navy, bold = true },
	WhichKeyDesc = { fg = colors.black },
	WhichKeySeperator = { fg = colors.coral },
	WhichKeyFloat = { bg = colors.white },
	WhichKeyBorder = { fg = colors.coral },

	-- === NOTIFY REFINADO ===
	NotifyERRORBorder = { fg = colors.error },
	NotifyWARNBorder = { fg = colors.warning },
	NotifyINFOBorder = { fg = colors.info },
	NotifyDEBUGBorder = { fg = colors.wine_red },
	NotifyTRACEBorder = { fg = colors.coral },
	NotifyERRORIcon = { fg = colors.error, bold = true },
	NotifyWARNIcon = { fg = colors.warning, bold = true },
	NotifyINFOIcon = { fg = colors.info, bold = true },
	NotifyDEBUGIcon = { fg = colors.wine_red, bold = true },
	NotifyTRACEIcon = { fg = colors.coral, bold = true },

	-- === INDENT GUIDES ===
	IndentBlanklineChar = { fg = colors.warm_gray },
	IndentBlanklineContextChar = { fg = colors.coral },
	IndentBlanklineContextStart = { fg = colors.coral },

	-- === ALPHA (DASHBOARD) ===
	AlphaShortcut = { fg = colors.crimson, bold = true },
	AlphaHeader = { fg = colors.blood_red, bold = true },
	AlphaHeaderLabel = { fg = colors.wine_red, bold = true },
	AlphaButtons = { fg = colors.black },
	AlphaFooter = { fg = colors.coral, bold = true },

	-- === DAP (DEBUG) ===
	DapBreakpoint = { fg = colors.crimson, bold = true },
	DapLogPoint = { fg = colors.navy, bold = true },
	DapStopped = { fg = colors.sage_green, bold = true },

	-- === TERMINAL ===
	TermCursor = { fg = colors.white, bg = colors.crimson },
	TermCursorNC = { fg = colors.white, bg = colors.coral },

	-- === MARKDOWN ===
	markdownHeadingDelimiter = { fg = colors.crimson, bold = true },
	markdownCode = { fg = colors.forest_green },
	markdownCodeBlock = { fg = colors.forest_green },
	markdownH1 = { fg = colors.blood_red, bold = true },
	markdownH2 = { fg = colors.crimson, bold = true },
	markdownH3 = { fg = colors.wine_red, bold = true },
	markdownLinkText = { fg = colors.navy },
	markdownUrl = { fg = colors.teal },
	markdownBold = { fg = colors.black, bold = true },
	markdownItalic = { fg = colors.black, italic = true },

	-- === HTML/CSS ===
	htmlTag = { fg = colors.crimson },
	htmlEndTag = { fg = colors.crimson },
	htmlTagName = { fg = colors.blood_red, bold = true },
	htmlArg = { fg = colors.navy },
	htmlSpecialChar = { fg = colors.coral },
	cssTagName = { fg = colors.crimson, bold = true },
	cssClassName = { fg = colors.navy },
	cssIdentifier = { fg = colors.wine_red },
	cssProp = { fg = colors.teal },
	cssValueLength = { fg = colors.indigo },
	cssValueNumber = { fg = colors.indigo },
	cssColor = { fg = colors.coral },

	-- === JAVASCRIPT/TYPESCRIPT ===
	javaScriptFunction = { fg = colors.crimson, bold = true },
	javaScriptRootFunction = { fg = colors.navy, bold = true },
	javaScriptIdentifier = { fg = colors.wine_red, bold = true },
	javaScriptBraces = { fg = colors.coral },
	javaScriptNumber = { fg = colors.indigo },
	javaScriptNull = { fg = colors.plum },
	javaScriptConditional = { fg = colors.blood_red, bold = true },

	-- === JSON ===
	jsonKeyword = { fg = colors.navy },
	jsonQuote = { fg = colors.coral },
	jsonBraces = { fg = colors.crimson },
	jsonString = { fg = colors.forest_green },
	jsonNumber = { fg = colors.indigo },
	jsonBoolean = { fg = colors.blood_red },
	jsonNull = { fg = colors.plum },
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "light"

-- Terminal colors sanguinários
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.crimson
vim.g.terminal_color_2 = colors.forest_green
vim.g.terminal_color_3 = colors.gold
vim.g.terminal_color_4 = colors.navy
vim.g.terminal_color_5 = colors.plum
vim.g.terminal_color_6 = colors.teal
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.medium_text
vim.g.terminal_color_9 = colors.blood_red
vim.g.terminal_color_10 = colors.sage_green
vim.g.terminal_color_11 = colors.amber
vim.g.terminal_color_12 = colors.navy
vim.g.terminal_color_13 = colors.wine_red
vim.g.terminal_color_14 = colors.coral
vim.g.terminal_color_15 = colors.cream
