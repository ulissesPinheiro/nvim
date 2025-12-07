-- Arquivo: ~/.config/nvim/colors/forest_light.lua
---@diagnostic disable: undefined-global
vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "forest_light"

-- Paleta florestal suave
-- Paleta florestal suave + amarelos visuais
local colors = {
	-- Base clara natural
	white = "#fafcfa",
	cream = "#f7faf7",
	mint_cream = "#f0f8f0",
	pale_green = "#f2f8f2",

	-- Cinzas naturais
	warm_gray = "#e8ebe8",
	medium_gray = "#d5d8d5",
	border_gray = "#c2c7c2",
	dark_gray = "#a8ada8",

	-- Verdes principais (suaves)
	forest_green = "#2d5016",
	deep_forest = "#1e3a0f",
	pine_green = "#2f4f2f",
	sage_green = "#87a96b",
	olive_green = "#6b8e23",

	-- Verdes médios
	leaf_green = "#228b22",
	moss_green = "#9acd32",
	lime_green = "#32cd32",
	spring_green = "#00ff7f",
	seafoam = "#7dd87d",

	-- Verdes claros
	mint = "#98fb98",
	light_green = "#90ee90",
	pale_lime = "#bfff80",
	cucumber = "#c4e4c4",

	-- Amarelos visuais
	yellow = "#ffe066",
	sunflower = "#ffd700",
	honey = "#ffec99",
	lemon = "#fffacd",
	gold = "#ffd700",
	amber = "#ffbf00",

	-- Complementares terrosos
	earth_brown = "#8b4513",
	bark_brown = "#654321",
	copper = "#b87333",
	bronze = "#cd7f32",

	-- Azuis naturais
	sky_blue = "#87ceeb",
	steel_blue = "#4682b4",
	slate_blue = "#6a5acd",
	navy = "#2c5aa0",
	ocean_blue = "#006994",

	-- Outros complementares
	purple = "#8e6a8e",
	lavender = "#b19cd9",
	plum = "#dda0dd",
	coral = "#ff7f50",
	salmon = "#fa8072",

	-- Textos
	black = "#1a2f1a",
	dark_text = "#2d4a2d",
	medium_text = "#4a664a",
	light_text = "#668066",

	-- Estados especiais
	cursor_line = "#f5f9f5",
	selection = "#e6f2e6",
	search = "#d9f2d9",
	active_search = "#ccebcc",

	-- Diagnósticos suaves
	error = "#cc4444",
	warning = "#e67e22",
	info = "#3498db",
	hint = "#9b59b6",
	success = "#27ae60",
}

local highlights = {
	-- === BASE NATURAL ===
	Normal = { fg = colors.black, bg = colors.white },
	NormalFloat = { fg = colors.black, bg = colors.cream },
	NormalNC = { fg = colors.dark_text, bg = colors.white },

	-- === CURSOR SUAVE ===
	Cursor = { fg = colors.white, bg = colors.forest_green },
	CursorLine = { bg = colors.cursor_line },
	CursorColumn = { bg = colors.cursor_line },
	CursorLineNr = { fg = colors.forest_green, bg = colors.cursor_line, bold = true },

	-- === NÚMEROS DISCRETOS ===
	LineNr = { fg = colors.light_text },
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
	FloatBorder = { fg = colors.forest_green },
	NormalFloatBorder = { fg = colors.forest_green },

	-- === STATUS FLORESTAL ===
	StatusLine = { fg = colors.white, bg = colors.forest_green, bold = true },
	StatusLineNC = { fg = colors.medium_text, bg = colors.warm_gray },

	-- === TABS NATURAIS ===
	TabLine = { fg = colors.medium_text, bg = colors.pale_green },
	TabLineFill = { bg = colors.warm_gray },
	TabLineSel = { fg = colors.white, bg = colors.forest_green, bold = true },

	-- === MENU SUAVE ===
	Pmenu = { fg = colors.black, bg = colors.cream },
	PmenuSel = { fg = colors.white, bg = colors.forest_green },
	PmenuSbar = { bg = colors.warm_gray },
	PmenuThumb = { bg = colors.sage_green },
	PmenuBorder = { fg = colors.forest_green },

	-- === SYNTAX NATURAL ===
	Comment = { fg = colors.light_text, italic = true },

	-- Constantes terrosas
	Constant = { fg = colors.purple, bold = false },
	String = { fg = colors.leaf_green, bold = false },
	Character = { fg = colors.leaf_green },
	Number = { fg = colors.slate_blue, bold = false },
	Boolean = { fg = colors.forest_green, bold = true },
	Float = { fg = colors.slate_blue, bold = false },

	-- Identificadores
	Identifier = { fg = colors.black },
	Function = { fg = colors.ocean_blue, bold = true },

	-- Statements naturais
	Statement = { fg = colors.forest_green, bold = true },
	Conditional = { fg = colors.pine_green, bold = true },
	Repeat = { fg = colors.deep_forest, bold = true },
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
	Delimiter = { fg = colors.black },
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

	["@keyword"] = { fg = colors.forest_green, bold = true },
	["@keyword.function"] = { fg = colors.forest_green, bold = true },
	["@keyword.operator"] = { fg = colors.earth_brown, bold = false },
	["@keyword.return"] = { fg = colors.pine_green, bold = true },

	["@type"] = { fg = colors.navy, bold = true },
	["@type.builtin"] = { fg = colors.ocean_blue, bold = true },
	["@namespace"] = { fg = colors.purple, bold = true },

	["@string"] = { fg = colors.leaf_green },
	["@number"] = { fg = colors.slate_blue },
	["@boolean"] = { fg = colors.forest_green, bold = true },

	["@operator"] = { fg = colors.earth_brown },
	["@punctuation.delimiter"] = { fg = colors.black },
	["@punctuation.bracket"] = { fg = colors.sage_green },

	["@tag"] = { fg = colors.forest_green, bold = true },
	["@tag.attribute"] = { fg = colors.ocean_blue, bold = true },
	["@tag.delimiter"] = { fg = colors.black },

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

	-- === GIT NATURAL ===
	GitSignsAdd = { fg = colors.seafoam, bold = true },
	GitSignsChange = { fg = colors.amber, bold = true },
	GitSignsDelete = { fg = colors.coral, bold = true },

	DiffAdd = { fg = colors.leaf_green, bg = colors.white },
	DiffChange = { fg = colors.amber, bg = colors.white },
	DiffDelete = { fg = colors.coral, bg = colors.white },
	DiffText = { fg = colors.black, bg = colors.gold },

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
	NeoTreeNormal = { fg = colors.black, bg = colors.white },
	NeoTreeNormalNC = { fg = colors.black, bg = colors.white },
	NeoTreeWinSeparator = { fg = colors.sage_green },
	NeoTreeDirectoryIcon = { fg = colors.forest_green, bold = true },
	NeoTreeDirectoryName = { fg = colors.pine_green, bold = true },
	NeoTreeFileName = { fg = colors.black },
	NeoTreeFileIcon = { fg = colors.bronze },
	NeoTreeIndentMarker = { fg = colors.sage_green },
	NeoTreeExpander = { fg = colors.forest_green, bold = true },
	NeoTreeModified = { fg = colors.coral, bold = true },
	NeoTreeGitAdded = { fg = colors.seafoam, bold = true },
	NeoTreeGitDeleted = { fg = colors.coral, bold = true },
	NeoTreeGitModified = { fg = colors.amber, bold = true },
	NeoTreeRootName = { fg = colors.deep_forest, bold = true },
	NeoTreeSymbolicLinkTarget = { fg = colors.ocean_blue },

	-- === CMP NATURAL ===
	CmpItemAbbrDeprecated = { fg = colors.light_text, strikethrough = true },
	CmpItemAbbrMatch = { fg = colors.forest_green, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = colors.sage_green, bold = true },
	CmpItemKindVariable = { fg = colors.purple, bold = false },
	CmpItemKindInterface = { fg = colors.ocean_blue, bold = false },
	CmpItemKindText = { fg = colors.black },
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
	NonText = { fg = colors.light_text },
	SpecialKey = { fg = colors.sage_green },
	Folded = { fg = colors.olive_green, bg = colors.pale_green, bold = false },
	FoldColumn = { fg = colors.sage_green },
	WildMenu = { fg = colors.white, bg = colors.forest_green, bold = true },
	SpellBad = { undercurl = true, sp = colors.error },
	SpellCap = { undercurl = true, sp = colors.warning },
	SpellLocal = { undercurl = true, sp = colors.info },
	SpellRare = { undercurl = true, sp = colors.hint },

	-- === LUALINE NATURAL ===
	lualine_a_normal = { fg = colors.white, bg = colors.forest_green, bold = true },
	lualine_b_normal = { fg = colors.forest_green, bg = colors.warm_gray, bold = false },
	lualine_c_normal = { fg = colors.black, bg = colors.white },

	-- === WHICH-KEY NATURAL ===
	WhichKey = { fg = colors.forest_green, bold = true },
	WhichKeyGroup = { fg = colors.ocean_blue, bold = false },
	WhichKeyDesc = { fg = colors.black },
	WhichKeySeperator = { fg = colors.sage_green },
	WhichKeyFloat = { bg = colors.white },
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
	IndentBlanklineChar = { fg = colors.warm_gray },
	IndentBlanklineContextChar = { fg = colors.sage_green },
	IndentBlanklineContextStart = { fg = colors.sage_green },

	-- === ALPHA (DASHBOARD) ===
	AlphaShortcut = { fg = colors.forest_green, bold = true },
	AlphaHeader = { fg = colors.pine_green, bold = true },
	AlphaHeaderLabel = { fg = colors.olive_green, bold = true },
	AlphaButtons = { fg = colors.black },
	AlphaFooter = { fg = colors.sage_green, bold = false },

	-- === DAP (DEBUG) ===
	DapBreakpoint = { fg = colors.coral, bold = true },
	DapLogPoint = { fg = colors.ocean_blue, bold = true },
	DapStopped = { fg = colors.seafoam, bold = true },

	-- === TERMINAL ===
	TermCursor = { fg = colors.white, bg = colors.forest_green },
	TermCursorNC = { fg = colors.white, bg = colors.sage_green },

	-- === MARKDOWN ===
	markdownHeadingDelimiter = { fg = colors.forest_green, bold = true },
	markdownCode = { fg = colors.leaf_green },
	markdownCodeBlock = { fg = colors.leaf_green },
	markdownH1 = { fg = colors.deep_forest, bold = true },
	markdownH2 = { fg = colors.pine_green, bold = true },
	markdownH3 = { fg = colors.olive_green, bold = true },
	markdownLinkText = { fg = colors.ocean_blue },
	markdownUrl = { fg = colors.navy },
	markdownBold = { fg = colors.black, bold = true },
	markdownItalic = { fg = colors.black, italic = true },

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
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
	vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "light"

-- Terminal colors naturais
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.coral
vim.g.terminal_color_2 = colors.leaf_green
vim.g.terminal_color_3 = colors.gold
vim.g.terminal_color_4 = colors.ocean_blue
vim.g.terminal_color_5 = colors.purple
vim.g.terminal_color_6 = colors.seafoam
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.medium_text
vim.g.terminal_color_9 = colors.salmon
vim.g.terminal_color_10 = colors.lime_green
vim.g.terminal_color_11 = colors.amber
vim.g.terminal_color_12 = colors.sky_blue
vim.g.terminal_color_13 = colors.plum
vim.g.terminal_color_14 = colors.mint
vim.g.terminal_color_15 = colors.cream
