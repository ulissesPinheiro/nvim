-- Arquivo: ~/.config/nvim/colors/sant_jorge_dark.lua
---@diagnostic disable: undefined-global
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "dark"
vim.g.colors_name = "forest_dark"

-- Paleta florestal escura
local colors = {
	-- Base escura natural
	black = "#000f00",
	dark_forest = "#1a2e1a",
	deep_night = "#233328",
	charcoal = "#2d3d2d",

	-- Cinzas naturais escuros
	dark_gray = "#3a453a",
	medium_gray = "#4a5a4a",
	light_gray = "#5a6a5a",
	warm_gray = "#6a756a",

	-- Verdes principais (naturais escuros)
	forest_green = "#4a7c59",
	pine_green = "#5d8a5d",
	sage_green = "#7a9b7a",
	olive_green = "#8ba673",
	deep_green = "#2d5016",

	-- Verdes médios
	leaf_green = "#6aa66a",
	moss_green = "#7fb85f",
	lime_green = "#88cc88",
	seafoam = "#98d498",

	-- Verdes claros para acentos
	mint = "#b8e6b8",
	light_green = "#c8f0c8",
	pale_lime = "#d5f5d5",

	-- Amarelos visuais (tons mais suaves para dark)
	gold = "#d4af37",
	amber = "#e6b800",
	honey = "#f0cc5f",
	lemon = "#f5f57a",
	sunflower = "#e6cc00",

	-- Complementares terrosos
	earth_brown = "#a0522d",
	bark_brown = "#8b7355",
	copper = "#cd853f",
	bronze = "#cd7f32",

	-- Azuis naturais
	ocean_blue = "#4682b4",
	steel_blue = "#5f9ea0",
	slate_blue = "#6a5acd",
	navy = "#4169e1",
	sky_blue = "#87ceeb",

	-- Outros complementares
	purple = "#9370db",
	lavender = "#b19cd9",
	plum = "#dda0dd",
	coral = "#ff6347",
	salmon = "#fa8072",
	pink = "#ff69b4",

	-- Textos claros
	white = "#f0f8f0",
	cream = "#f5f5dc",
	light_text = "#e0e8e0",
	medium_text = "#c0c8c0",
	dim_text = "#a0a8a0",

	-- Estados especiais
	cursor_line = "#2a3f2a",
	selection = "#3d5a3d",
	search = "#4a6b4a",
	active_search = "#5a7a5a",

	-- Diagnósticos suaves
	error = "#e74c3c",
	warning = "#f39c12",
	info = "#3498db",
	hint = "#9b59b6",
	success = "#27ae60",
}

local highlights = {
	-- === BASE NATURAL ===
	Normal = { fg = colors.light_text, bg = colors.black },
	NormalFloat = { fg = colors.light_text, bg = colors.dark_forest },
	NormalNC = { fg = colors.medium_text, bg = colors.black },

	-- === CURSOR SUAVE ===
	Cursor = { fg = colors.black, bg = colors.forest_green },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.forest_green, bg = colors.cursor_line, bold = true },

	-- === NÚMEROS DISCRETOS ===
	LineNr = { fg = colors.dim_text },
	SignColumn = { bg = colors.black },

	-- === SELEÇÃO NATURAL ===
	Visual = { fg = colors.white, bg = colors.selection },
	VisualNOS = { fg = colors.white, bg = colors.selection },

	-- === BUSCA SUAVE ===
	Search = { fg = colors.white, bg = colors.search },
	IncSearch = { fg = colors.white, bg = colors.active_search },

	-- === BORDAS NATURAIS ===
	VertSplit = { fg = colors.sage_green },
	WinSeparator = { fg = colors.sage_green },
	FloatBorder = { fg = colors.seafoam },
	NormalFloatBorder = { fg = colors.fseafoam },

	-- === STATUS FLORESTAL ===
	StatusLine = { fg = colors.white, bg = colors.seafoam, bold = true },
	StatusLineNC = { fg = colors.medium_text, bg = colors.medium_gray },

	-- === TABS NATURAIS ===
	TabLine = { fg = colors.medium_text, bg = colors.dark_forest },
	TabLineFill = { bg = colors.medium_gray },
	TabLineSel = { fg = colors.white, bg = colors.seafoam, bold = true },

	-- === MENU SUAVE ===
	Pmenu = { fg = colors.light_text, bg = colors.dark_forest },
	PmenuSel = { fg = colors.white, bg = colors.seafoam },
	PmenuSbar = { bg = colors.medium_gray },
	PmenuThumb = { bg = colors.sage_green },
	PmenuBorder = { fg = colors.forest_green },

	-- === SYNTAX NATURAL ===
	Comment = { fg = colors.dim_text, italic = true },

	-- Constantes terrosas
	Constant = { fg = colors.purple, bold = false },
	String = { fg = colors.leaf_green, bold = false },
	Character = { fg = colors.leaf_green },
	Number = { fg = colors.slate_blue, bold = false },
	Boolean = { fg = colors.seafoam, bold = true },
	Float = { fg = colors.slate_blue, bold = false },

	-- Identificadores
	Identifier = { fg = colors.light_text },
	Function = { fg = colors.ocean_blue, bold = true },

	-- Statements naturais
	Statement = { fg = colors.seafoam, bold = true },
	Conditional = { fg = colors.pine_green, bold = true },
	Repeat = { fg = colors.sage_green, bold = true },
	Label = { fg = colors.olive_green, bold = true },
	Operator = { fg = colors.earth_brown, bold = false },
	Keyword = { fg = colors.seafoam, bold = true },
	Exception = { fg = colors.copper, bold = true },

	-- Preprocessor natural
	PreProc = { fg = colors.navy, bold = true },
	Include = { fg = colors.coral, bold = true },
	Define = { fg = colors.amber, bold = true },
	Macro = { fg = colors.ocean_blue, bold = true },
	PreCondit = { fg = colors.purple, bold = true },

	-- Types naturais
	Type = { fg = colors.navy, bold = true },
	StorageClass = { fg = colors.seafoam, bold = true },
	Structure = { fg = colors.ocean_blue, bold = true },
	Typedef = { fg = colors.purple, bold = true },

	-- Special natural
	Special = { fg = colors.bronze, bold = true },
	SpecialChar = { fg = colors.coral, bold = true },
	Tag = { fg = colors.seafoam, bold = true },
	Delimiter = { fg = colors.light_text },
	SpecialComment = { fg = colors.sage_green, italic = true },
	Debug = { fg = colors.copper, bold = true },

	-- === TREESITTER NATURAL ===
	["@variable"] = { fg = colors.white },
	["@variable.builtin"] = { fg = colors.plum, bold = false },
	["@parameter"] = { fg = colors.coral, bold = false },
	["@field"] = { fg = colors.ocean_blue },
	["@property"] = { fg = colors.ocean_blue },

	["@function"] = { fg = colors.sky_blue, bold = true },
	["@function.builtin"] = { fg = colors.navy, bold = true },
	["@method"] = { fg = colors.ocean_blue, bold = true },
	["@constructor"] = { fg = colors.purple, bold = true },

	["@keyword"] = { fg = colors.gold, bold = true },
	["@keyword.function"] = { fg = colors.seafoam, bold = true },
	["@keyword.operator"] = { fg = colors.earth_brown, bold = false },
	["@keyword.return"] = { fg = colors.lavender, bold = true },

	["@type"] = { fg = colors.salmon, bold = true },
	["@type.definition"] = { fg = colors.salmon, bold = true },
	["@type.qualifier"] = { fg = colors.salmon, italic = true },
	["@type.parameter"] = { fg = colors.salmon, italic = true },
	["@type.builtin"] = { fg = colors.salmon, italic = true },
	["@namespace"] = { fg = colors.lavender, bold = true },

	["@string"] = { fg = colors.plum },
	["@number"] = { fg = colors.pink },
	["@boolean"] = { fg = colors.salmon, bold = true },

	["@operator"] = { fg = colors.bronze },
	["@punctuation.delimiter"] = { fg = colors.light_text },
	["@punctuation.bracket"] = { fg = colors.sage_green },

	["@tag"] = { fg = colors.seafoam, bold = true },
	["@tag.attribute"] = { fg = colors.ocean_blue, bold = true },
	["@tag.delimiter"] = { fg = colors.light_text },

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
	TelescopeSelection = { fg = colors.white, bg = colors.selection },
	TelescopeSelectionCaret = { fg = colors.forest_green, bold = true },
	TelescopeMatching = { fg = colors.pine_green, bold = true },
	TelescopeNormal = { bg = colors.black },
	TelescopePromptNormal = { bg = colors.black },

	-- === NEO-TREE FLORESTAL ===
	NeoTreeNormal = { fg = colors.light_text, bg = colors.black },
	NeoTreeNormalNC = { fg = colors.light_text, bg = colors.black },
	NeoTreeWinSeparator = { fg = colors.sage_green },
	NeoTreeDirectoryIcon = { fg = colors.forest_green, bold = true },
	NeoTreeDirectoryName = { fg = colors.pine_green, bold = true },
	NeoTreeFileName = { fg = colors.light_text },
	NeoTreeFileIcon = { fg = colors.bronze },
	NeoTreeIndentMarker = { fg = colors.sage_green },
	NeoTreeExpander = { fg = colors.forest_green, bold = true },
	NeoTreeModified = { fg = colors.coral, bold = true },
	NeoTreeGitAdded = { fg = colors.gold, bold = true },
	NeoTreeGitDeleted = { fg = colors.coral, bold = true },
	NeoTreeGitModified = { fg = colors.amber, bold = true },
	NeoTreeRootName = { fg = colors.forest_green, bold = true },
	NeoTreeSymbolicLinkTarget = { fg = colors.ocean_blue },

	-- === CMP NATURAL ===
	CmpItemAbbrDeprecated = { fg = colors.dim_text, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.forest_green, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.sage_green, bold = true },
	CmpItemKindVariable = { fg = colors.purple, bold = false },
	CmpItemKindInterface = { fg = colors.ocean_blue, bold = false },
	CmpItemKindText = { fg = colors.light_text },
	CmpItemKindFunction = { fg = colors.ocean_blue, bold = true },
	CmpItemKindMethod = { fg = colors.ocean_blue, bold = true },
	CmpItemKindKeyword = { fg = colors.forest_green, bold = true },
	CmpItemKindProperty = { fg = colors.sage_green, bold = false },
	CmpItemKindUnit = { fg = colors.slate_blue, bold = false },
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
	CmpItemKindConstant = { fg = colors.slate_blue, bold = false },
	CmpItemKindConstructor = { fg = colors.forest_green, bold = true },
	CmpItemKindField = { fg = colors.ocean_blue },

	-- === EXTRAS NATURAIS ===
	Error = { fg = colors.error, bold = false },
	ErrorMsg = { fg = colors.error, bold = false },
	WarningMsg = { fg = colors.warning, bold = false },
	MoreMsg = { fg = colors.seafoam, bold = false },
	Question = { fg = colors.ocean_blue, bold = false },
	Directory = { fg = colors.forest_green, bold = true },
	Title = { fg = colors.pine_green, bold = true },
	NonText = { fg = colors.dim_text },
	SpecialKey = { fg = colors.sage_green },
	Folded = { fg = colors.olive_green, bg = colors.dark_forest, bold = false },
	FoldColumn = { fg = colors.sage_green },
	WildMenu = { fg = colors.white, bg = colors.forest_green, bold = true },
	SpellBad = { undercurl = true, sp = colors.error },
	SpellCap = { undercurl = true, sp = colors.warning },
	SpellLocal = { undercurl = true, sp = colors.info },
	SpellRare = { undercurl = true, sp = colors.hint },

	-- === LUALINE NATURAL ===
	lualine_a_normal = { fg = colors.white, bg = colors.forest_green, bold = true },
	lualine_b_normal = { fg = colors.forest_green, bg = colors.medium_gray, bold = false },
	lualine_c_normal = { fg = colors.light_text, bg = colors.black },

	-- === WHICH-KEY NATURAL ===
	WhichKey = { fg = colors.forest_green, bold = true },
	WhichKeyGroup = { fg = colors.ocean_blue, bold = false },
	WhichKeyDesc = { fg = colors.light_text },
	WhichKeySeperator = { fg = colors.sage_green },
	WhichKeyFloat = { bg = colors.dark_forest },
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
	IndentBlanklineChar = { fg = colors.medium_gray },
	IndentBlanklineContextChar = { fg = colors.sage_green },
	IndentBlanklineContextStart = { fg = colors.sage_green },

	-- === ALPHA (DASHBOARD) ===
	AlphaShortcut = { fg = colors.forest_green, bold = true },
	AlphaHeader = { fg = colors.pine_green, bold = true },
	AlphaHeaderLabel = { fg = colors.olive_green, bold = true },
	AlphaButtons = { fg = colors.light_text },
	AlphaFooter = { fg = colors.sage_green, bold = false },

	-- === DAP (DEBUG) ===
	DapBreakpoint = { fg = colors.coral, bold = true },
	DapLogPoint = { fg = colors.ocean_blue, bold = true },
	DapStopped = { fg = colors.seafoam, bold = true },

	-- === TERMINAL ===
	TermCursor = { fg = colors.black, bg = colors.forest_green },
	TermCursorNC = { fg = colors.black, bg = colors.sage_green },

	-- === MARKDOWN ===
	markdownHeadingDelimiter = { fg = colors.forest_green, bold = true },
	markdownCode = { fg = colors.leaf_green },
	markdownCodeBlock = { fg = colors.leaf_green },
	markdownH1 = { fg = colors.forest_green, bold = true },
	markdownH2 = { fg = colors.pine_green, bold = true },
	markdownH3 = { fg = colors.olive_green, bold = true },
	markdownLinkText = { fg = colors.ocean_blue },
	markdownUrl = { fg = colors.navy },
	markdownBold = { fg = colors.light_text, bold = true },
	markdownItalic = { fg = colors.light_text, italic = true },

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
	cssValueLength = { fg = colors.slate_blue },
	cssValueNumber = { fg = colors.slate_blue },
	cssColor = { fg = colors.coral },

	-- === JAVASCRIPT/TYPESCRIPT ===
	javaScriptFunction = { fg = colors.forest_green, bold = true },
	javaScriptRootFunction = { fg = colors.ocean_blue, bold = true },
	javaScriptIdentifier = { fg = colors.olive_green, bold = false },
	javaScriptBraces = { fg = colors.sage_green },
	javaScriptNumber = { fg = colors.slate_blue },
	javaScriptNull = { fg = colors.purple },
	javaScriptConditional = { fg = colors.pine_green, bold = true },

	-- === JSON ===
	jsonKeyword = { fg = colors.ocean_blue },
	jsonQuote = { fg = colors.sage_green },
	jsonBraces = { fg = colors.forest_green },
	jsonString = { fg = colors.leaf_green },
	jsonNumber = { fg = colors.slate_blue },
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
	pythonString = { fg = colors.leaf_green },
	pythonNumber = { fg = colors.slate_blue },
	pythonBoolean = { fg = colors.forest_green },

	-- === RUST ===
	rustKeyword = { fg = colors.forest_green, bold = true },
	rustFunction = { fg = colors.ocean_blue, bold = true },
	rustMacro = { fg = colors.sage_green, bold = true },
	rustString = { fg = colors.leaf_green },
	rustNumber = { fg = colors.slate_blue },
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
	GitSignsAdd = { fg = colors.ocean_blue, bold = true },
	GitSignsChange = { fg = colors.amber, bold = true },
	GitSignsDelete = { fg = colors.earth_brown, bold = true },

	DiffAdd = { fg = colors.gold, bg = colors.black },
	DiffChange = { fg = colors.amber, bg = colors.black },
	DiffDelete = { fg = colors.coral, bg = colors.black },
	DiffText = { fg = colors.white, bg = colors.gold },
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "dark"

-- Terminal colors naturais escuros
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.coral
vim.g.terminal_color_2 = colors.leaf_green
vim.g.terminal_color_3 = colors.gold
vim.g.terminal_color_4 = colors.ocean_blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.seafoam
vim.g.terminal_color_7 = colors.light_text
vim.g.terminal_color_8 = colors.medium_text
vim.g.terminal_color_9 = colors.salmon
vim.g.terminal_color_10 = colors.lime_green
vim.g.terminal_color_11 = colors.amber
vim.g.terminal_color_12 = colors.sky_blue
vim.g.terminal_color_13 = colors.plum
vim.g.terminal_color_14 = colors.mint
vim.g.terminal_color_15 = colors.white
