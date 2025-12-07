-- Arquivo: ~/.config/nvim/colors/white_aggressive.lua

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.background = "light"
vim.g.colors_name = "white_aggressive"

-- Paleta de cores agressiva
local colors = {
  -- Brancos extremos
  white = "#ffffff",
  pure_white = "#ffffff",
  off_white = "#fafafa",
  light_gray = "#f5f5f5",
  
  -- Cinzas contrastantes
  gray = "#e0e0e0",
  dark_gray = "#d0d0d0",
  border_gray = "#c0c0c0",
  
  -- Cores agressivas e vibrantes
  electric_blue = "#0066ff",
  cyber_purple = "#6600cc",
  neon_green = "#00cc44",
  laser_red = "#ff0033",
  toxic_orange = "#ff6600",
  hot_pink = "#ff0099",
  
  -- Cores secundárias intensas
  deep_blue = "#003399",
  blood_red = "#cc0000",
  electric_cyan = "#00ccff",
  poison_green = "#33cc00",
  vivid_yellow = "#ffcc00",
  royal_purple = "#9900ff",
  
  -- Textos contrastantes
  black = "#000000",
  dark_text = "#1a1a1a",
  medium_text = "#333333",
  light_text = "#666666",
  
  -- UI específicos
  cursor_line = "#f8f8f8",
  selection = "#e6f3ff",
  search = "#ffff99",
  active_search = "#ffff00",
  
  -- Estados
  error = "#ff0033",
  warning = "#ff6600",
  info = "#0066ff",
  hint = "#6600cc",
  success = "#00cc44",
}

local highlights = {
  -- === BASE EXTREMO ===
  Normal = { fg = colors.black, bg = colors.white },
  NormalFloat = { fg = colors.black, bg = colors.off_white },
  NormalNC = { fg = colors.dark_text, bg = colors.white },
  
  -- === CURSOR AGRESSIVO ===
  Cursor = { fg = colors.white, bg = colors.laser_red },
  CursorLine = { bg = colors.cursor_line },
  CursorColumn = { bg = colors.cursor_line },
  CursorLineNr = { fg = colors.electric_blue, bg = colors.cursor_line, bold = true },
  
  -- === NÚMEROS CONTRASTANTES ===
  LineNr = { fg = colors.light_text },
  SignColumn = { bg = colors.white },
  
  -- === SELEÇÃO VIBRANTE ===
  Visual = { fg = colors.black, bg = colors.selection },
  VisualNOS = { fg = colors.black, bg = colors.selection },
  
  -- === BUSCA AGRESSIVA ===
  Search = { fg = colors.black, bg = colors.search },
  IncSearch = { fg = colors.black, bg = colors.active_search },
  
  -- === BORDAS ELÉTRICAS ===
  VertSplit = { fg = colors.electric_blue },
  WinSeparator = { fg = colors.electric_blue },
  FloatBorder = { fg = colors.electric_blue },
  NormalFloatBorder = { fg = colors.electric_blue },
  
  -- === STATUS VIBRANTE ===
  StatusLine = { fg = colors.white, bg = colors.electric_blue, bold = true },
  StatusLineNC = { fg = colors.medium_text, bg = colors.gray },
  
  -- === TABS CONTRASTANTES ===
  TabLine = { fg = colors.medium_text, bg = colors.light_gray },
  TabLineFill = { bg = colors.gray },
  TabLineSel = { fg = colors.white, bg = colors.electric_blue, bold = true },
  
  -- === MENU AGRESSIVO ===
  Pmenu = { fg = colors.black, bg = colors.off_white },
  PmenuSel = { fg = colors.white, bg = colors.electric_blue },
  PmenuSbar = { bg = colors.gray },
  PmenuThumb = { bg = colors.electric_blue },
  PmenuBorder = { fg = colors.electric_blue },
  
  -- === SYNTAX AGRESSIVO ===
  Comment = { fg = colors.light_text, italic = true },
  
  -- Constantes vibrantes
  Constant = { fg = colors.cyber_purple, bold = true },
  String = { fg = colors.neon_green, bold = true },
  Character = { fg = colors.neon_green },
  Number = { fg = colors.cyber_purple, bold = true },
  Boolean = { fg = colors.laser_red, bold = true },
  Float = { fg = colors.cyber_purple, bold = true },
  
  -- Identificadores contrastantes
  Identifier = { fg = colors.black },
  Function = { fg = colors.electric_blue, bold = true },
  
  -- Statements agressivos
  Statement = { fg = colors.laser_red, bold = true },
  Conditional = { fg = colors.laser_red, bold = true },
  Repeat = { fg = colors.laser_red, bold = true },
  Label = { fg = colors.hot_pink, bold = true },
  Operator = { fg = colors.toxic_orange, bold = true },
  Keyword = { fg = colors.laser_red, bold = true },
  Exception = { fg = colors.blood_red, bold = true },
  
  -- Preprocessor vibrante
  PreProc = { fg = colors.electric_blue, bold = true },
  Include = { fg = colors.hot_pink, bold = true },
  Define = { fg = colors.toxic_orange, bold = true },
  Macro = { fg = colors.electric_blue, bold = true },
  PreCondit = { fg = colors.cyber_purple, bold = true },
  
  -- Types contrastantes
  Type = { fg = colors.deep_blue, bold = true },
  StorageClass = { fg = colors.laser_red, bold = true },
  Structure = { fg = colors.electric_cyan, bold = true },
  Typedef = { fg = colors.royal_purple, bold = true },
  
  -- Special agressivo
  Special = { fg = colors.toxic_orange, bold = true },
  SpecialChar = { fg = colors.hot_pink, bold = true },
  Tag = { fg = colors.laser_red, bold = true },
  Delimiter = { fg = colors.black },
  SpecialComment = { fg = colors.electric_blue, italic = true },
  Debug = { fg = colors.blood_red, bold = true },
  
  -- === TREESITTER AGRESSIVO ===
  ["@variable"] = { fg = colors.black },
  ["@variable.builtin"] = { fg = colors.cyber_purple, bold = true },
  ["@parameter"] = { fg = colors.toxic_orange, bold = true },
  ["@field"] = { fg = colors.electric_blue },
  ["@property"] = { fg = colors.electric_blue },
  
  ["@function"] = { fg = colors.electric_blue, bold = true },
  ["@function.builtin"] = { fg = colors.deep_blue, bold = true },
  ["@method"] = { fg = colors.electric_blue, bold = true },
  ["@constructor"] = { fg = colors.royal_purple, bold = true },
  
  ["@keyword"] = { fg = colors.laser_red, bold = true },
  ["@keyword.function"] = { fg = colors.laser_red, bold = true },
  ["@keyword.operator"] = { fg = colors.toxic_orange, bold = true },
  ["@keyword.return"] = { fg = colors.blood_red, bold = true },
  
  ["@type"] = { fg = colors.deep_blue, bold = true },
  ["@type.builtin"] = { fg = colors.electric_cyan, bold = true },
  ["@namespace"] = { fg = colors.royal_purple, bold = true },
  
  ["@string"] = { fg = colors.neon_green, bold = true },
  ["@number"] = { fg = colors.cyber_purple, bold = true },
  ["@boolean"] = { fg = colors.laser_red, bold = true },
  
  ["@operator"] = { fg = colors.toxic_orange, bold = true },
  ["@punctuation.delimiter"] = { fg = colors.black },
  ["@punctuation.bracket"] = { fg = colors.electric_blue },
  
  ["@tag"] = { fg = colors.laser_red, bold = true },
  ["@tag.attribute"] = { fg = colors.electric_blue, bold = true },
  ["@tag.delimiter"] = { fg = colors.black },
  
  -- === LSP CONTRASTANTE ===
  DiagnosticError = { fg = colors.error, bold = true },
  DiagnosticWarn = { fg = colors.warning, bold = true },
  DiagnosticInfo = { fg = colors.info, bold = true },
  DiagnosticHint = { fg = colors.hint, bold = true },
  
  DiagnosticUnderlineError = { undercurl = true, sp = colors.error },
  DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
  DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
  DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
  
  LspReferenceText = { bg = colors.selection },
  LspReferenceRead = { bg = colors.selection },
  LspReferenceWrite = { bg = colors.selection, bold = true },
  
  -- === GIT AGRESSIVO ===
  GitSignsAdd = { fg = colors.neon_green, bold = true },
  GitSignsChange = { fg = colors.toxic_orange, bold = true },
  GitSignsDelete = { fg = colors.laser_red, bold = true },
  
  DiffAdd = { fg = colors.neon_green, bg = colors.white },
  DiffChange = { fg = colors.toxic_orange, bg = colors.white },
  DiffDelete = { fg = colors.laser_red, bg = colors.white },
  DiffText = { fg = colors.black, bg = colors.vivid_yellow },
  
  -- === TELESCOPE ELÉTRICO ===
  TelescopeBorder = { fg = colors.electric_blue },
  TelescopePromptBorder = { fg = colors.laser_red },
  TelescopeResultsBorder = { fg = colors.electric_blue },
  TelescopePreviewBorder = { fg = colors.cyber_purple },
  TelescopePromptTitle = { fg = colors.white, bg = colors.laser_red, bold = true },
  TelescopeResultsTitle = { fg = colors.white, bg = colors.electric_blue, bold = true },
  TelescopePreviewTitle = { fg = colors.white, bg = colors.cyber_purple, bold = true },
  TelescopeSelection = { fg = colors.black, bg = colors.selection },
  TelescopeSelectionCaret = { fg = colors.laser_red, bold = true },
  TelescopeMatching = { fg = colors.electric_blue, bold = true },
  TelescopeNormal = { bg = colors.white },
  TelescopePromptNormal = { bg = colors.white },
  
  -- === NEO-TREE VIBRANTE ===
  NeoTreeNormal = { fg = colors.black, bg = colors.white },
  NeoTreeNormalNC = { fg = colors.black, bg = colors.white },
  NeoTreeWinSeparator = { fg = colors.electric_blue },
  NeoTreeDirectoryIcon = { fg = colors.electric_blue, bold = true },
  NeoTreeDirectoryName = { fg = colors.electric_blue, bold = true },
  NeoTreeFileName = { fg = colors.black },
  NeoTreeFileIcon = { fg = colors.toxic_orange },
  NeoTreeIndentMarker = { fg = colors.electric_blue },
  NeoTreeExpander = { fg = colors.laser_red, bold = true },
  NeoTreeModified = { fg = colors.hot_pink, bold = true },
  NeoTreeGitAdded = { fg = colors.neon_green, bold = true },
  NeoTreeGitDeleted = { fg = colors.laser_red, bold = true },
  NeoTreeGitModified = { fg = colors.toxic_orange, bold = true },
  NeoTreeRootName = { fg = colors.royal_purple, bold = true },
  NeoTreeSymbolicLinkTarget = { fg = colors.electric_cyan },
  
  -- === CMP CONTRASTANTE ===
  CmpItemAbbrDeprecated = { fg = colors.light_text, strikethrough = true },
  CmpItemAbbrMatch = { fg = colors.electric_blue, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = colors.laser_red, bold = true },
  CmpItemKindVariable = { fg = colors.cyber_purple, bold = true },
  CmpItemKindInterface = { fg = colors.electric_cyan, bold = true },
  CmpItemKindText = { fg = colors.black },
  CmpItemKindFunction = { fg = colors.electric_blue, bold = true },
  CmpItemKindMethod = { fg = colors.electric_blue, bold = true },
  CmpItemKindKeyword = { fg = colors.laser_red, bold = true },
  CmpItemKindProperty = { fg = colors.toxic_orange, bold = true },
  CmpItemKindUnit = { fg = colors.cyber_purple, bold = true },
  CmpItemKindClass = { fg = colors.royal_purple, bold = true },
  CmpItemKindModule = { fg = colors.deep_blue, bold = true },
  CmpItemKindOperator = { fg = colors.toxic_orange, bold = true },
  CmpItemKindReference = { fg = colors.hot_pink, bold = true },
  CmpItemKindEnum = { fg = colors.electric_cyan, bold = true },
  CmpItemKindStruct = { fg = colors.deep_blue, bold = true },
  CmpItemKindValue = { fg = colors.neon_green, bold = true },
  CmpItemKindEvent = { fg = colors.laser_red, bold = true },
  CmpItemKindFile = { fg = colors.toxic_orange },
  CmpItemKindFolder = { fg = colors.electric_blue, bold = true },
  CmpItemKindSnippet = { fg = colors.vivid_yellow, bold = true },
  CmpItemKindTypeParameter = { fg = colors.royal_purple, bold = true },
  CmpItemKindConstant = { fg = colors.cyber_purple, bold = true },
  CmpItemKindConstructor = { fg = colors.laser_red, bold = true },
  CmpItemKindField = { fg = colors.electric_blue },
  
  -- === EXTRAS AGRESSIVOS ===
  Error = { fg = colors.error, bold = true },
  ErrorMsg = { fg = colors.error, bold = true },
  WarningMsg = { fg = colors.warning, bold = true },
  MoreMsg = { fg = colors.neon_green, bold = true },
  Question = { fg = colors.electric_blue, bold = true },
  Directory = { fg = colors.electric_blue, bold = true },
  Title = { fg = colors.laser_red, bold = true },
  NonText = { fg = colors.light_text },
  SpecialKey = { fg = colors.electric_blue },
  Folded = { fg = colors.electric_blue, bg = colors.light_gray, bold = true },
  FoldColumn = { fg = colors.electric_blue },
  WildMenu = { fg = colors.white, bg = colors.electric_blue, bold = true },
  SpellBad = { undercurl = true, sp = colors.error },
  SpellCap = { undercurl = true, sp = colors.warning },
  SpellLocal = { undercurl = true, sp = colors.info },
  SpellRare = { undercurl = true, sp = colors.hint },
  
  -- === LUALINE ELÉTRICA ===
  lualine_a_normal = { fg = colors.white, bg = colors.electric_blue, bold = true },
  lualine_b_normal = { fg = colors.electric_blue, bg = colors.gray, bold = true },
  lualine_c_normal = { fg = colors.black, bg = colors.white },
  
  -- === WHICH-KEY AGRESSIVO ===
  WhichKey = { fg = colors.laser_red, bold = true },
  WhichKeyGroup = { fg = colors.electric_blue, bold = true },
  WhichKeyDesc = { fg = colors.black },
  WhichKeySeperator = { fg = colors.toxic_orange },
  WhichKeyFloat = { bg = colors.white },
  WhichKeyBorder = { fg = colors.electric_blue },
  
  -- === NOTIFY VIBRANTE ===
  NotifyERRORBorder = { fg = colors.error },
  NotifyWARNBorder = { fg = colors.warning },
  NotifyINFOBorder = { fg = colors.info },
  NotifyDEBUGBorder = { fg = colors.cyber_purple },
  NotifyTRACEBorder = { fg = colors.electric_cyan },
  NotifyERRORIcon = { fg = colors.error, bold = true },
  NotifyWARNIcon = { fg = colors.warning, bold = true },
  NotifyINFOIcon = { fg = colors.info, bold = true },
  NotifyDEBUGIcon = { fg = colors.cyber_purple, bold = true },
  NotifyTRACEIcon = { fg = colors.electric_cyan, bold = true },
  
  -- === INDENT BLANKLINE ===
  IndentBlanklineChar = { fg = colors.gray },
  IndentBlanklineContextChar = { fg = colors.electric_blue },
  IndentBlanklineContextStart = { fg = colors.electric_blue },
  
  -- === ALPHA (DASHBOARD) ===
  AlphaShortcut = { fg = colors.laser_red, bold = true },
  AlphaHeader = { fg = colors.electric_blue, bold = true },
  AlphaHeaderLabel = { fg = colors.cyber_purple, bold = true },
  AlphaButtons = { fg = colors.black },
  AlphaFooter = { fg = colors.toxic_orange, bold = true },
  
  -- === DAP (DEBUG) ===
  DapBreakpoint = { fg = colors.laser_red, bold = true },
  DapLogPoint = { fg = colors.electric_blue, bold = true },
  DapStopped = { fg = colors.neon_green, bold = true },
  
  -- === TERMINAL ===
  TermCursor = { fg = colors.white, bg = colors.laser_red },
  TermCursorNC = { fg = colors.white, bg = colors.electric_blue },
}

-- Aplicar highlights
for group, hl in pairs(highlights) do
  vim.api.nvim_set_hl(0, group, hl)
end

-- Configurações extras
vim.opt.termguicolors = true
vim.opt.background = "light"

-- Terminal colors agressivos
vim.g.terminal_color_0 = colors.black
vim.g.terminal_color_1 = colors.laser_red
vim.g.terminal_color_2 = colors.neon_green
vim.g.terminal_color_3 = colors.vivid_yellow
vim.g.terminal_color_4 = colors.electric_blue
vim.g.terminal_color_5 = colors.cyber_purple
vim.g.terminal_color_6 = colors.electric_cyan
vim.g.terminal_color_7 = colors.white
vim.g.terminal_color_8 = colors.medium_text
vim.g.terminal_color_9 = colors.blood_red
vim.g.terminal_color_10 = colors.poison_green
vim.g.terminal_color_11 = colors.toxic_orange
vim.g.terminal_color_12 = colors.deep_blue
vim.g.terminal_color_13 = colors.royal_purple
vim.g.terminal_color_14 = colors.hot_pink
vim.g.terminal_color_15 = colors.pure_white
