-- Duotone Purple colorscheme for Neovim
-- Monochromatic purple variation of duotone

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "duotone-purple"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#181420",
  bg_light = "#241e30",
  bg_lighter = "#423852",
  fg = "#9080a8",
  fg_dim = "#6a5a80",
  fg_dimmer = "#5a4a70",
  fg_bright = "#d0a8ff",
  white = "#f9f7fb",

  -- Primary accent (purple)
  purple = "#8040d0",
  purple_bright = "#9050e0",
  purple_light = "#a060f0",
  lavender = "#c888ff",

  -- Secondary accent (violet/indigo)
  violet = "#9050d0",
  violet_bright = "#a060e0",
  violet_light = "#b870ff",
  violet_dark = "#502090",
  violet_darker = "#6030a8",
  violet_muted = "#402070",
  violet_dim = "#8848c8",

  -- Semantic
  cursor = "#502090",
  selection = "#302840",
  comment = "#5a4a70",
  line_nr = "#423852",

  -- Diff colors
  diff_add = "#6030a8",
  diff_change = "#402070",
  diff_delete = "#8040d0",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#b870ff",
  info = "#a060f0",
  hint = "#6a5a80",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.violet, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.violet, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.violet })
hi("IncSearch", { fg = c.bg, bg = c.violet_bright })
hi("CurSearch", { fg = c.bg, bg = c.violet_light })
hi("Substitute", { fg = c.bg, bg = c.purple })
hi("MatchParen", { fg = c.violet_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.purple_bright })
hi("Title", { fg = c.violet, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.violet })
hi("Question", { fg = c.violet })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.violet })
hi("Pmenu", { fg = c.fg, bg = c.bg_light })
hi("PmenuSel", { fg = c.white, bg = c.bg_lighter })
hi("PmenuSbar", { bg = c.bg_lighter })
hi("PmenuThumb", { bg = c.fg_dim })
hi("SpellBad", { undercurl = true, sp = c.error })
hi("SpellCap", { undercurl = true, sp = c.warn })
hi("SpellLocal", { undercurl = true, sp = c.info })
hi("SpellRare", { undercurl = true, sp = c.hint })
hi("QuickFixLine", { bg = c.bg_light })

-- Syntax
hi("Comment", { fg = c.comment, italic = true })
hi("Constant", { fg = c.lavender })
hi("String", { fg = c.violet })
hi("Character", { fg = c.violet })
hi("Number", { fg = c.lavender })
hi("Boolean", { fg = c.lavender })
hi("Float", { fg = c.lavender })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.purple_bright })
hi("Statement", { fg = c.purple })
hi("Conditional", { fg = c.purple })
hi("Repeat", { fg = c.purple })
hi("Label", { fg = c.purple })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.purple, italic = true })
hi("Exception", { fg = c.purple })
hi("PreProc", { fg = c.purple_light })
hi("Include", { fg = c.purple })
hi("Define", { fg = c.purple })
hi("Macro", { fg = c.purple_light })
hi("PreCondit", { fg = c.purple })
hi("Type", { fg = c.violet_dim })
hi("StorageClass", { fg = c.purple })
hi("Structure", { fg = c.violet_dim })
hi("Typedef", { fg = c.violet_dim })
hi("Special", { fg = c.purple_light })
hi("SpecialChar", { fg = c.violet_bright })
hi("Tag", { fg = c.purple })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.violet, bold = true })

-- Diff
hi("DiffAdd", { fg = c.violet, bg = "#241a2e" })
hi("DiffChange", { fg = c.purple, bg = "#201a28" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.violet })
hi("Changed", { fg = c.purple })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.violet })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#241a2a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#201a2a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.violet, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.purple_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.lavender })
hi("@constant.builtin", { fg = c.lavender, italic = true })
hi("@constant.macro", { fg = c.lavender })
hi("@module", { fg = c.purple })
hi("@label", { fg = c.purple })
hi("@string", { fg = c.violet })
hi("@string.documentation", { fg = c.violet })
hi("@string.regexp", { fg = c.violet_bright })
hi("@string.escape", { fg = c.violet_bright })
hi("@string.special", { fg = c.violet_bright })
hi("@character", { fg = c.violet })
hi("@character.special", { fg = c.violet_bright })
hi("@boolean", { fg = c.lavender })
hi("@number", { fg = c.lavender })
hi("@number.float", { fg = c.lavender })
hi("@type", { fg = c.violet_dim })
hi("@type.builtin", { fg = c.violet_dim, italic = true })
hi("@type.definition", { fg = c.violet_dim })
hi("@type.qualifier", { fg = c.purple })
hi("@attribute", { fg = c.purple_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.purple_bright })
hi("@function.builtin", { fg = c.purple_bright, italic = true })
hi("@function.call", { fg = c.purple_bright })
hi("@function.macro", { fg = c.purple_light })
hi("@function.method", { fg = c.purple_bright })
hi("@function.method.call", { fg = c.purple_bright })
hi("@constructor", { fg = c.purple_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.purple, italic = true })
hi("@keyword.coroutine", { fg = c.purple, italic = true })
hi("@keyword.function", { fg = c.purple, italic = true })
hi("@keyword.operator", { fg = c.purple })
hi("@keyword.import", { fg = c.purple })
hi("@keyword.storage", { fg = c.purple })
hi("@keyword.repeat", { fg = c.purple })
hi("@keyword.return", { fg = c.purple })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.purple })
hi("@keyword.conditional", { fg = c.purple })
hi("@keyword.conditional.ternary", { fg = c.purple })
hi("@keyword.directive", { fg = c.purple_light })
hi("@keyword.directive.define", { fg = c.purple_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.purple_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.violet, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.violet, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.lavender })
hi("@markup.link", { fg = c.purple_bright, underline = true })
hi("@markup.link.label", { fg = c.lavender })
hi("@markup.link.url", { fg = c.lavender, underline = true })
hi("@markup.raw", { fg = c.violet })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.purple })
hi("@markup.list.checked", { fg = c.violet })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.violet })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.purple })
hi("@tag", { fg = c.purple })
hi("@tag.attribute", { fg = c.violet_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.violet })
hi("GitSignsChange", { fg = c.purple })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.violet, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.violet, bold = true })
hi("TelescopePromptPrefix", { fg = c.violet })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.violet, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.violet, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.violet, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.violet_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.purple_bright })
hi("NvimTreeFolderName", { fg = c.purple_bright })
hi("NvimTreeOpenedFolderName", { fg = c.purple_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.violet, bold = true })
hi("NvimTreeSpecialFile", { fg = c.violet_light })
hi("NvimTreeGitDirty", { fg = c.purple })
hi("NvimTreeGitNew", { fg = c.violet })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.purple_bright })
hi("NeoTreeDirectoryName", { fg = c.purple_bright })
hi("NeoTreeRootName", { fg = c.violet, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.violet })
hi("NeoTreeGitModified", { fg = c.purple })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.violet })
hi("WhichKeyGroup", { fg = c.purple_bright })
hi("WhichKeyDesc", { fg = c.fg })
hi("WhichKeySeparator", { fg = c.fg_dim })
hi("WhichKeyFloat", { bg = c.bg_light })
hi("WhichKeyBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("WhichKeyValue", { fg = c.fg_dim })

-- Indent-blankline
hi("IblIndent", { fg = c.bg_light })
hi("IblScope", { fg = c.bg_lighter })
hi("IndentBlanklineChar", { fg = c.bg_light })
hi("IndentBlanklineContextChar", { fg = c.bg_lighter })

-- Noice
hi("NoiceCmdline", { fg = c.fg, bg = c.bg_light })
hi("NoiceCmdlinePopup", { fg = c.fg, bg = c.bg_light })
hi("NoiceCmdlinePopupBorder", { fg = c.bg_lighter })
hi("NoiceCmdlineIcon", { fg = c.violet })
hi("NoiceConfirm", { fg = c.fg, bg = c.bg_light })
hi("NoiceConfirmBorder", { fg = c.bg_lighter })

-- Notify
hi("NotifyERRORBorder", { fg = c.error })
hi("NotifyERRORIcon", { fg = c.error })
hi("NotifyERRORTitle", { fg = c.error })
hi("NotifyWARNBorder", { fg = c.warn })
hi("NotifyWARNIcon", { fg = c.warn })
hi("NotifyWARNTitle", { fg = c.warn })
hi("NotifyINFOBorder", { fg = c.info })
hi("NotifyINFOIcon", { fg = c.info })
hi("NotifyINFOTitle", { fg = c.info })
hi("NotifyDEBUGBorder", { fg = c.comment })
hi("NotifyDEBUGIcon", { fg = c.comment })
hi("NotifyDEBUGTitle", { fg = c.comment })
hi("NotifyTRACEBorder", { fg = c.hint })
hi("NotifyTRACEIcon", { fg = c.hint })
hi("NotifyTRACETitle", { fg = c.hint })

-- Mini
hi("MiniStatuslineFilename", { fg = c.fg, bg = c.bg_light })
hi("MiniStatuslineFileinfo", { fg = c.fg, bg = c.bg_light })
hi("MiniStatuslineInactive", { fg = c.fg_dim, bg = c.bg_light })
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.violet, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.purple_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.lavender, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.violet_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.violet, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.violet })
hi("CmpItemKind", { fg = c.purple_bright })
hi("CmpItemKindClass", { fg = c.violet_dim })
hi("CmpItemKindColor", { fg = c.lavender })
hi("CmpItemKindConstant", { fg = c.lavender })
hi("CmpItemKindConstructor", { fg = c.purple_bright })
hi("CmpItemKindEnum", { fg = c.violet_dim })
hi("CmpItemKindEnumMember", { fg = c.lavender })
hi("CmpItemKindEvent", { fg = c.purple })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.purple_bright })
hi("CmpItemKindFunction", { fg = c.purple_bright })
hi("CmpItemKindInterface", { fg = c.violet_dim })
hi("CmpItemKindKeyword", { fg = c.purple })
hi("CmpItemKindMethod", { fg = c.purple_bright })
hi("CmpItemKindModule", { fg = c.purple })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.violet })
hi("CmpItemKindStruct", { fg = c.violet_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.violet_dim })
hi("CmpItemKindUnit", { fg = c.lavender })
hi("CmpItemKindValue", { fg = c.lavender })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.violet, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.violet, bold = true })
hi("LazyH2", { fg = c.violet, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.lavender })
hi("LazyCommitType", { fg = c.purple })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.purple_bright })
hi("LazyReasonPlugin", { fg = c.purple })
hi("LazyReasonCmd", { fg = c.violet })
hi("LazyReasonEvent", { fg = c.lavender })
hi("LazyReasonFt", { fg = c.violet_dim })
hi("LazyReasonKeys", { fg = c.purple_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.violet })
hi("LazyUrl", { fg = c.lavender, underline = true })
hi("LazyValue", { fg = c.violet })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.violet, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.purple_bright, bold = true })
hi("MasonHighlight", { fg = c.violet })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.violet })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.violet, bold = true })
hi("MasonHighlightSecondary", { fg = c.purple_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.violet, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.violet })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.violet })
hi("DashboardIcon", { fg = c.purple_bright })
hi("DashboardShortCut", { fg = c.purple })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.violet, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.violet_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.violet, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.purple
vim.g.terminal_color_2 = c.violet
vim.g.terminal_color_3 = c.violet_light
vim.g.terminal_color_4 = c.purple_bright
vim.g.terminal_color_5 = c.violet
vim.g.terminal_color_6 = c.purple_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.violet_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.lavender
vim.g.terminal_color_14 = c.violet_dim
vim.g.terminal_color_15 = c.fg_bright
