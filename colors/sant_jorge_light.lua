-- Arquivo: ~/.config/nvim/colors/sant_jorge_light.lua
---@diagnostic disable: undefined-global
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "sant_jorge_light"

-- Paleta Sant Jorge clara
local colors = {
	-- Base clara natural
	white = "#ffffff",
	light_cream = "#fefef8",
	cream = "#f8f8f0",
	warm_white = "#f5f5f0",

	-- Cinzas naturais claros
	light_gray = "#e8e8e0",
	medium_gray = "#d0d0c8",
	dark_gray = "#b8b8b0",
	charcoal = "#a0a098",

	-- Verdes principais (naturais para light)
	deep_forest = "#1a4d1a",
	forest_green = "#2d5d2d",
	pine_green = "#3d6d3d",
	sage_green = "#4d7d4d",
	olive_green = "#5d8d5d",

	-- Verdes médios
	leaf_green = "#2d7d2d",
	moss_green = "#3d8d3d",
	lime_green = "#4d9d4d",
	seafoam = "#5dad5d",

	-- Verdes claros para acentos
	mint = "#6dbd6d",
	light_green = "#7dcd7d",
	pale_lime = "#8ddd8d",

	-- Amarelos visuais (mais escuros para light)
	gold = "#b8860b",
	amber = "#cc9900",
	honey = "#d4af37",
	lemon = "#daa520",
	sunflower = "#cc9900",

	-- Complementares terrosos
	earth_brown = "#8b4513",
	bark_brown = "#654321",
	copper = "#b87333",
	bronze = "#cd7f32",

	-- Azuis naturais
	ocean_blue = "#1e4d72",
	steel_blue = "#36648b",
	slate_blue = "#483d8b",
	navy = "#191970",
	sky_blue = "#4682b4",

	-- Outros complementares
	purple = "#663399",
	lavender = "#8a2be2",
	plum = "#9932cc",
	coral = "#cd5c5c",
	salmon = "#cd5c5c",
	pink = "#c71585",

	-- Textos escuros
	black = "#000000",
	dark_text = "#202020",
	medium_text = "#404040",
	light_text = "#606060",
	dim_text = "#808080",

	-- Estados especiais
	cursor_line = "#f0f8f0",
	selection = "#d0e0d0",
	search = "#c0d0c0",
	active_search = "#b0c0b0",

	-- Diagnósticos suaves
	error = "#dc143c",
	warning = "#ff8c00",
	info = "#4169e1",
	hint = "#9370db",
	success = "#228b22",
}

local highlights = {
	-- === BASE NATURAL ===
	Normal = { fg = colors.dark_text, bg = colors.white },
	NormalFloat = { fg = colors.dark_text, bg = colors.cream },
	NormalNC = { fg = colors.medium_text, bg = colors.white },

	-- === CURSOR SUAVE ===
	Cursor = { fg = colors.white, bg = colors.forest_green },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.forest_green, bg = colors.cursor_line, bold = true },

	-- === NÚMEROS DISCRETOS ===
	LineNr = { fg = colors.dim_text },
	SignColumn = { bg = colors.white },

	-- === SELEÇÃO NATURAL ===
	Visual = { fg = colors.black, bg = colors.selection },
	VisualNOS = { fg = colors.black, bg = colors.selection },

	-- === BUSCA SUAVE ===
	Search = { fg = colors.black, bg = colors.search },
	IncSearch = { fg = colors.black, bg = colors.active_search },

	-- === BORDAS NATURAIS ===
	VertSplit = { fg = colors.sage_green },
	WinSeparator = { fg = colors.sage_green },
	FloatBorder = { fg = colors.seafoam },
	NormalFloatBorder = { fg = colors.seafoam },

	-- === STATUS FLORESTAL ===
	StatusLine = { fg = colors.white, bg = colors.forest_green, bold = true },
	StatusLineNC = { fg = colors.medium_text, bg = colors.light_gray },

	-- === TABS NATURAIS ===
	TabLine = { fg = colors.medium_text, bg = colors.light_gray },
	TabLineFill = { bg = colors.medium_gray },
	TabLineSel = { fg = colors.white, bg = colors.forest_green, bold = true },

	-- === MENU SUAVE ===
	Pmenu = { fg = colors.dark_text, bg = colors.cream },
	PmenuSel = { fg = colors.white, bg = colors.forest_green },
	PmenuSbar = { bg = colors.medium_gray },
	PmenuThumb = { bg = colors.sage_green },
	PmenuBorder = { fg = colors.forest_green },

	-- === SYNTAX NATURAL ===
	Comment = { fg = colors.dim_text, italic = true },

	-- Constantes terrosas
	Constant = { fg = colors.purple, bold = false },
	String = { fg = colors.deep_forest, bold = false },
	Character = { fg = colors.deep_forest },
	Number = { fg = colors.navy, bold = false },
	Boolean = { fg = colors.forest_green, bold = true },
	Float = { fg = colors.navy, bold = false },

	-- Identificadores
	Identifier = { fg = colors.dark_text },
	Function = { fg = colors.ocean_blue, bold = true },

	-- Statements naturais
	Statement = { fg = colors.forest_green, bold = true },
	Conditional = { fg = colors.pine_green, bold = true },
	Repeat = { fg = colors.sage_green, bold = true },
	Label = { fg = colors.olive_green, bold = true },
	Operator = { fg = colors.earth_brown, bold = false },
	Keyword = { fg = colors.forest_green, bold = true },
	Exception = { fg = colors.copper, bold = true },

	-- Preprocessor natural
	PreProc = { fg = colors.navy, bold = true },
	Include = { fg = colors.coral, bold = true },
	Define = { fg = colors.amber, bold = true },
	Macro = { fg = colors.ocean_blue, bold = true },
	PreCondit = { fg = colors.purple, bold = true },

	-- Types naturais
	Type = { fg = colors.navy, bold = true },
	StorageClass = { fg = colors.forest_green, bold = true },
	Structure = { fg = colors.ocean_blue, bold = true },
	Typedef = { fg = colors.purple, bold = true },

	-- Special natural
	Special = { fg = colors.bronze, bold = true },
	SpecialChar = { fg = colors.coral, bold = true },
	Tag = { fg = colors.forest_green, bold = true },
	Delimiter = { fg = colors.dark_text },
	SpecialComment = { fg = colors.sage_green, italic = true },
	Debug = { fg = colors.copper, bold = true },

	-- === TREESITTER NATURAL ===
	["@variable"] = { fg = colors.black },
	["@variable.builtin"] = { fg = colors.purple, bold = false },
	["@parameter"] = { fg = colors.coral, bold = false },
	["@field"] = { fg = colors.ocean_blue },
	["@property"] = { fg = colors.ocean_blue },

	["@function"] = { fg = colors.ocean_blue, bold = true },
	["@function.builtin"] = { fg = colors.navy, bold = true },
	["@method"] = { fg = colors.ocean_blue, bold = true },
	["@constructor"] = { fg = colors.purple, bold = true },

	["@keyword"] = { fg = colors.gold, bold = true },
	["@keyword.function"] = { fg = colors.forest_green, bold = true },
	["@keyword.operator"] = { fg = colors.earth_brown, bold = false },
	["@keyword.return"] = { fg = colors.lavender, bold = true },

	["@type"] = { fg = colors.navy, bold = true },
	["@type.definition"] = { fg = colors.navy, bold = true },
	["@type.qualifier"] = { fg = colors.navy, italic = true },
	["@type.parameter"] = { fg = colors.navy, italic = true },
	["@type.builtin"] = { fg = colors.navy, italic = true },
	["@namespace"] = { fg = colors.lavender, bold = true },

	["@string"] = { fg = colors.deep_forest },
	["@number"] = { fg = colors.navy },
	["@boolean"] = { fg = colors.forest_green, bold = true },

	["@operator"] = { fg = colors.bronze },
	["@punctuation.delimiter"] = { fg = colors.dark_text },
	["@punctuation.bracket"] = { fg = colors.sage_green },

	["@tag"] = { fg = colors.forest_green, bold = true },
	["@tag.attribute"] = { fg = colors.ocean_blue, bold = true },
	["@tag.delimiter"] = { fg = colors.dark_text },

	-- === LSP DIAGNÓSTICOS ===
	DiagnosticError = { fg = colors.error, bold = false },
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

	-- === TELESCOPE NATURAL ===
	TelescopeBorder = { fg = colors.sage_green },
	TelescopePromptBorder = { fg = colors.forest_green },
	TelescopeResultsBorder = { fg = colors.sage_green },
	TelescopePreviewBorder = { fg = colors.olive_green },
	TelescopePromptTitle = { fg = colors.white, bg = colors.forest_green, bold = true },
	TelescopeResultsTitle = { fg = colors.white, bg = colors.sage_green, bold = true },
	TelescopePreviewTitle = { fg = colors.white, bg = colors.olive_green, bold = true },
	TelescopeSelection = { fg = colors.black, bg = colors.selection },
	TelescopeSelectionCaret = { fg = colors.forest_green, bold = true },
	TelescopeMatching = { fg = colors.pine_green, bold = true },
	TelescopeNormal = { bg = colors.white },
	TelescopePromptNormal = { bg = colors.white },

	-- === NEO-TREE FLORESTAL ===
	NeoTreeNormal = { fg = colors.dark_text, bg = colors.white },
	NeoTreeNormalNC = { fg = colors.dark_text, bg = colors.white },
	NeoTreeWinSeparator = { fg = colors.sage_green },
	NeoTreeDirectoryIcon = { fg = colors.forest_green, bold = true },
	NeoTreeDirectoryName = { fg = colors.pine_green, bold = true },
	NeoTreeFileName = { fg = colors.dark_text },
	NeoTreeFileIcon = { fg = colors.bronze },
	NeoTreeIndentMarker = { fg = colors.sage_green },
	NeoTreeExpander = { fg = colors.forest_green, bold = true },
	NeoTreeModified = { fg = colors.coral, bold = true },
	NeoTreeGitAdded = { fg = colors.success, bold = true },
	NeoTreeGitDeleted = { fg = colors.error, bold = true },
	NeoTreeGitModified = { fg = colors.warning, bold = true },
	NeoTreeRootName = { fg = colors.forest_green, bold = true },
	NeoTreeSymbolicLinkTarget = { fg = colors.ocean_blue },

	-- === CMP NATURAL ===
	CmpItemAbbrDeprecated = { fg = colors.dim_text, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.forest_green, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.sage_green, bold = true },
	CmpItemKindVariable = { fg = colors.purple, bold = false },
	CmpItemKindInterface = { fg = colors.ocean_blue, bold = false },
	CmpItemKindText = { fg = colors.dark_text },
	CmpItemKindFunction = { fg = colors.ocean_blue, bold = true },
	CmpItemKindMethod = { fg = colors.ocean_blue, bold = true },
	CmpItemKindKeyword = { fg = colors.forest_green, bold = true },
	CmpItemKindProperty = { fg = colors.sage_green, bold = false },
	CmpItemKindUnit = { fg = colors.navy, bold = false },
	CmpItemKindClass = { fg = colors.purple, bold = true },
	CmpItemKindModule = { fg = colors.navy, bold = true },
	CmpItemKindOperator = { fg = colors.earth_brown, bold = false },
	CmpItemKindReference = { fg = colors.olive_green, bold = false },
	CmpItemKindEnum = { fg = colors.ocean_blue, bold = false },
	CmpItemKindStruct = { fg = colors.navy, bold = true },
	CmpItemKindValue = { fg = colors.leaf_green, bold = false },
	CmpItemKindEvent = { fg = colors.forest_green, bold = false },
	CmpItemKindFile = { fg = colors.bronze },
	CmpItemKindFolder = { fg = colors.forest_green, bold = true },
	CmpItemKindSnippet = { fg = colors.gold, bold = false },
	CmpItemKindTypeParameter = { fg = colors.purple, bold = false },
	CmpItemKindConstant = { fg = colors.navy, bold = false },
	CmpItemKindConstructor = { fg = colors.forest_green, bold = true },
	CmpItemKindField = { fg = colors.ocean_blue },

	-- === EXTRAS NATURAIS ===
	Error = { fg = colors.error, bold = false },
	ErrorMsg = { fg = colors.error, bold = false },
	WarningMsg = { fg = colors.warning, bold = false },
	MoreMsg = { fg = colors.forest_green, bold = false },
	Question = { fg = colors.ocean_blue, bold = false },
	Directory = { fg = colors.forest_green, bold = true },
	Title = { fg = colors.pine_green, bold = true },
	NonText = { fg = colors.dim_text },
	SpecialKey = { fg = colors.sage_green },
	Folded = { fg = colors.olive_green, bg = colors.light_gray, bold = false },
	FoldColumn = { fg = colors.sage_green },
	WildMenu = { fg = colors.white, bg = colors.forest_green, bold = true },
	SpellBad = { undercurl = true, sp = colors.error },
	SpellCap = { undercurl = true, sp = colors.warning },
	SpellLocal = { undercurl = true, sp = colors.info },
	SpellRare = { undercurl = true, sp = colors.hint },

	-- === LUALINE NATURAL ===
	lualine_a_normal = { fg = colors.white, bg = colors.forest_green, bold = true },
	lualine_b_normal = { fg = colors.forest_green, bg = colors.light_gray, bold = false },
	lualine_c_normal = { fg = colors.dark_text, bg = colors.white },

	-- === WHICH-KEY NATURAL ===
	WhichKey = { fg = colors.forest_green, bold = true },
	WhichKeyGroup = { fg = colors.ocean_blue, bold = false },
	WhichKeyDesc = { fg = colors.dark_text },
	WhichKeySeperator = { fg = colors.sage_green },
	WhichKeyFloat = { bg = colors.cream },
	WhichKeyBorder = { fg = colors.sage_green },

	-- === NOTIFY SUAVE ===
	NotifyERRORBorder = { fg = colors.error },
	NotifyWARNBorder = { fg = colors.warning },
	NotifyINFOBorder = { fg = colors.info },
	NotifyDEBUGBorder = { fg = colors.olive_green },
	NotifyTRACEBorder = { fg = colors.sage_green },
	NotifyERRORIcon = { fg = colors.error, bold = false },
	NotifyWARNIcon = { fg = colors.warning, bold = false },
	NotifyINFOIcon = { fg = colors.info, bold = false },
	NotifyDEBUGIcon = { fg = colors.olive_green, bold = false },
	NotifyTRACEIcon = { fg = colors.sage_green, bold = false },

	-- === INDENT GUIDES ===
	IndentBlanklineChar = { fg = colors.light_gray },
	IndentBlanklineContextChar = { fg = colors.sage_green },
	IndentBlanklineContextStart = { fg = colors.sage_green },

	-- === ALPHA (DASHBOARD) ===
	AlphaShortcut = { fg = colors.forest_green, bold = true },
	AlphaHeader = { fg = colors.pine_green, bold = true },
	AlphaHeaderLabel = { fg = colors.olive_green, bold = true },
	AlphaButtons = { fg = colors.dark_text },
	AlphaFooter = { fg = colors.sage_green, bold = false },

	-- === DAP (DEBUG) ===
	DapBreakpoint = { fg = colors.coral, bold = true },
	DapLogPoint = { fg = colors.ocean_blue, bold = true },
	DapStopped = { fg = colors.forest_green, bold = true },

	-- === TERMINAL ===
	TermCursor = { fg = colors.white, bg = colors.forest_green },
	TermCursorNC = { fg = colors.white, bg = colors.sage_green },

	-- === MARKDOWN ===
	markdownHeadingDelimiter = { fg = colors.forest_green, bold = true },
	markdownCode = { fg = colors.deep_forest },
	markdownCodeBlock = { fg = colors.deep_forest },
	markdownH1 = { fg = colors.forest_green, bold = true },
	markdownH2 = { fg = colors.pine_green, bold = true },
	markdownH3 = { fg = colors.olive_green, bold = true },
	markdownLinkText = { fg = colors.ocean_blue },
	markdownUrl = { fg = colors.navy },
	markdownBold = { fg = colors.dark_text, bold = true },
	markdownItalic = { fg = colors.dark_text, italic = true },

	-- === HTML/CSS ===
	htmlTag = { fg = colors.forest_green },
	htmlEndTag = { fg = colors.forest_green },
	htmlTagName = { fg = colors.pine_green, bold = true },
	htmlArg = { fg = colors.ocean_blue },
	htmlSpecialChar = { fg = colors.coral },
	cssTagName = { fg = colors.forest_green, bold = true },
	cssClassName = { fg = colors.ocean_blue },
	cssIdentifier = { fg = colors.olive_green },
	cssProp = { fg = colors.navy },
	cssValueLength = { fg = colors.navy },
	cssValueNumber = { fg = colors.navy },
	cssColor = { fg = colors.coral },

	-- === JAVASCRIPT/TYPESCRIPT ===
	javaScriptFunction = { fg = colors.forest_green, bold = true },
	javaScriptRootFunction = { fg = colors.ocean_blue, bold = true },
	javaScriptIdentifier = { fg = colors.olive_green, bold = false },
	javaScriptBraces = { fg = colors.sage_green },
	javaScriptNumber = { fg = colors.navy },
	javaScriptNull = { fg = colors.purple },
	javaScriptConditional = { fg = colors.pine_green, bold = true },

	-- === JSON ===
	jsonKeyword = { fg = colors.ocean_blue },
	jsonQuote = { fg = colors.sage_green },
	jsonBraces = { fg = colors.forest_green },
	jsonString = { fg = colors.deep_forest },
	jsonNumber = { fg = colors.navy },
	jsonBoolean = { fg = colors.forest_green },
	jsonNull = { fg = colors.purple },

	-- === PYTHON ===
	pythonFunction = { fg = colors.ocean_blue, bold = true },
	pythonBuiltin = { fg = colors.navy, bold = true },
	pythonStatement = { fg = colors.forest_green, bold = true },
	pythonConditional = { fg = colors.pine_green, bold = true },
	pythonRepeat = { fg = colors.olive_green, bold = true },
	pythonOperator = { fg = colors.earth_brown },
	pythonException = { fg = colors.copper, bold = true },
	pythonString = { fg = colors.deep_forest },
	pythonNumber = { fg = colors.navy },
	pythonBoolean = { fg = colors.forest_green },

	-- === RUST ===
	rustKeyword = { fg = colors.forest_green, bold = true },
	rustFunction = { fg = colors.ocean_blue, bold = true },
	rustMacro = { fg = colors.sage_green, bold = true },
	rustString = { fg = colors.deep_forest },
	rustNumber = { fg = colors.navy },
	rustBoolean = { fg = colors.forest_green },
	rustOperator = { fg = colors.earth_brown },
	rustType = { fg = colors.navy, bold = true },

	-- === C/C++ ===
	cInclude = { fg = colors.coral, bold = true },
	cDefine = { fg = colors.amber, bold = true },
	cPreCondit = { fg = colors.purple, bold = true },
	cType = { fg = colors.navy, bold = true },
	cStorageClass = { fg = colors.forest_green, bold = true },
	cppType = { fg = colors.navy, bold = true },
	cppStatement = { fg = colors.forest_green, bold = true },

	-- === GIT NATURAL ===
	GitSignsAdd = { fg = colors.success, bold = true },
	GitSignsChange = { fg = colors.warning, bold = true },
	GitSignsDelete = { fg = colors.error, bold = true },

	DiffAdd = { fg = colors.success, bg = colors.white },
	DiffChange = { fg = colors.warning, bg = colors.white },
	DiffDelete = { fg = colors.error, bg = colors.white },
	DiffText = { fg = colors.black, bg = colors.gold },
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "light"

-- Terminal colors naturais claros
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.coral
vim.g.terminal_color_2 = colors.deep_forest
vim.g.terminal_color_3 = colors.gold
vim.g.terminal_color_4 = colors.ocean_blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.forest_green
vim.g.terminal_color_7 = colors.dark_text
vim.g.terminal_color_8 = colors.medium_text
vim.g.terminal_color_9 = colors.salmon
vim.g.terminal_color_10 = colors.leaf_green
vim.g.terminal_color_11 = colors.amber
vim.g.terminal_color_12 = colors.sky_blue
vim.g.terminal_color_13 = colors.plum
vim.g.terminal_color_14 = colors.mint
vim.g.terminal_color_15 = colors.white
