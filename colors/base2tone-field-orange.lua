-- Base2Tone Field Orange colorscheme for Neovim
-- Monochromatic orange variation of base2tone-field

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "base2tone-field-orange"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#1e1814",
  bg_light = "#2c241e",
  bg_lighter = "#4f4238",
  fg = "#a49080",
  fg_dim = "#7a6a5a",
  fg_dimmer = "#6a5a4a",
  fg_bright = "#ffd8a8",
  white = "#fbf9f7",

  -- Primary accent (orange)
  orange = "#e07020",
  orange_bright = "#f08030",
  orange_light = "#ff9040",
  peach = "#ffb888",

  -- Secondary accent (amber/gold)
  amber = "#e09030",
  amber_bright = "#f0a040",
  amber_light = "#ffb858",
  amber_dark = "#945000",
  amber_darker = "#aa6000",
  amber_muted = "#774820",
  amber_dim = "#d08830",

  -- Semantic
  cursor = "#945000",
  selection = "#3c3028",
  comment = "#6a5a4a",
  line_nr = "#4f4238",

  -- Diff colors
  diff_add = "#aa6000",
  diff_change = "#774820",
  diff_delete = "#e07020",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#ffb858",
  info = "#ff9040",
  hint = "#7a6a5a",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.amber, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.amber, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.amber })
hi("IncSearch", { fg = c.bg, bg = c.amber_bright })
hi("CurSearch", { fg = c.bg, bg = c.amber_light })
hi("Substitute", { fg = c.bg, bg = c.orange })
hi("MatchParen", { fg = c.amber_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.orange_bright })
hi("Title", { fg = c.amber, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.amber })
hi("Question", { fg = c.amber })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.amber })
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
hi("Constant", { fg = c.peach })
hi("String", { fg = c.amber })
hi("Character", { fg = c.amber })
hi("Number", { fg = c.peach })
hi("Boolean", { fg = c.peach })
hi("Float", { fg = c.peach })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.orange_bright })
hi("Statement", { fg = c.orange })
hi("Conditional", { fg = c.orange })
hi("Repeat", { fg = c.orange })
hi("Label", { fg = c.orange })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.orange, italic = true })
hi("Exception", { fg = c.orange })
hi("PreProc", { fg = c.orange_light })
hi("Include", { fg = c.orange })
hi("Define", { fg = c.orange })
hi("Macro", { fg = c.orange_light })
hi("PreCondit", { fg = c.orange })
hi("Type", { fg = c.amber_dim })
hi("StorageClass", { fg = c.orange })
hi("Structure", { fg = c.amber_dim })
hi("Typedef", { fg = c.amber_dim })
hi("Special", { fg = c.orange_light })
hi("SpecialChar", { fg = c.amber_bright })
hi("Tag", { fg = c.orange })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.amber, bold = true })

-- Diff
hi("DiffAdd", { fg = c.amber, bg = "#2e2a1a" })
hi("DiffChange", { fg = c.orange, bg = "#2a2418" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.amber })
hi("Changed", { fg = c.orange })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.amber })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#2a2a1a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#2a241a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.amber, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.orange_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.peach })
hi("@constant.builtin", { fg = c.peach, italic = true })
hi("@constant.macro", { fg = c.peach })
hi("@module", { fg = c.orange })
hi("@label", { fg = c.orange })
hi("@string", { fg = c.amber })
hi("@string.documentation", { fg = c.amber })
hi("@string.regexp", { fg = c.amber_bright })
hi("@string.escape", { fg = c.amber_bright })
hi("@string.special", { fg = c.amber_bright })
hi("@character", { fg = c.amber })
hi("@character.special", { fg = c.amber_bright })
hi("@boolean", { fg = c.peach })
hi("@number", { fg = c.peach })
hi("@number.float", { fg = c.peach })
hi("@type", { fg = c.amber_dim })
hi("@type.builtin", { fg = c.amber_dim, italic = true })
hi("@type.definition", { fg = c.amber_dim })
hi("@type.qualifier", { fg = c.orange })
hi("@attribute", { fg = c.orange_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.orange_bright })
hi("@function.builtin", { fg = c.orange_bright, italic = true })
hi("@function.call", { fg = c.orange_bright })
hi("@function.macro", { fg = c.orange_light })
hi("@function.method", { fg = c.orange_bright })
hi("@function.method.call", { fg = c.orange_bright })
hi("@constructor", { fg = c.orange_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.orange, italic = true })
hi("@keyword.coroutine", { fg = c.orange, italic = true })
hi("@keyword.function", { fg = c.orange, italic = true })
hi("@keyword.operator", { fg = c.orange })
hi("@keyword.import", { fg = c.orange })
hi("@keyword.storage", { fg = c.orange })
hi("@keyword.repeat", { fg = c.orange })
hi("@keyword.return", { fg = c.orange })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.orange })
hi("@keyword.conditional", { fg = c.orange })
hi("@keyword.conditional.ternary", { fg = c.orange })
hi("@keyword.directive", { fg = c.orange_light })
hi("@keyword.directive.define", { fg = c.orange_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.orange_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.amber, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.amber, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.peach })
hi("@markup.link", { fg = c.orange_bright, underline = true })
hi("@markup.link.label", { fg = c.peach })
hi("@markup.link.url", { fg = c.peach, underline = true })
hi("@markup.raw", { fg = c.amber })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.orange })
hi("@markup.list.checked", { fg = c.amber })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.amber })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.orange })
hi("@tag", { fg = c.orange })
hi("@tag.attribute", { fg = c.amber_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.amber })
hi("GitSignsChange", { fg = c.orange })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.amber, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.amber, bold = true })
hi("TelescopePromptPrefix", { fg = c.amber })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.amber, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.amber, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.amber, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.amber_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.orange_bright })
hi("NvimTreeFolderName", { fg = c.orange_bright })
hi("NvimTreeOpenedFolderName", { fg = c.orange_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.amber, bold = true })
hi("NvimTreeSpecialFile", { fg = c.amber_light })
hi("NvimTreeGitDirty", { fg = c.orange })
hi("NvimTreeGitNew", { fg = c.amber })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.orange_bright })
hi("NeoTreeDirectoryName", { fg = c.orange_bright })
hi("NeoTreeRootName", { fg = c.amber, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.amber })
hi("NeoTreeGitModified", { fg = c.orange })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.amber })
hi("WhichKeyGroup", { fg = c.orange_bright })
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
hi("NoiceCmdlineIcon", { fg = c.amber })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.amber, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.orange_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.peach, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.amber_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.amber, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.amber })
hi("CmpItemKind", { fg = c.orange_bright })
hi("CmpItemKindClass", { fg = c.amber_dim })
hi("CmpItemKindColor", { fg = c.peach })
hi("CmpItemKindConstant", { fg = c.peach })
hi("CmpItemKindConstructor", { fg = c.orange_bright })
hi("CmpItemKindEnum", { fg = c.amber_dim })
hi("CmpItemKindEnumMember", { fg = c.peach })
hi("CmpItemKindEvent", { fg = c.orange })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.orange_bright })
hi("CmpItemKindFunction", { fg = c.orange_bright })
hi("CmpItemKindInterface", { fg = c.amber_dim })
hi("CmpItemKindKeyword", { fg = c.orange })
hi("CmpItemKindMethod", { fg = c.orange_bright })
hi("CmpItemKindModule", { fg = c.orange })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.amber })
hi("CmpItemKindStruct", { fg = c.amber_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.amber_dim })
hi("CmpItemKindUnit", { fg = c.peach })
hi("CmpItemKindValue", { fg = c.peach })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.amber, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.amber, bold = true })
hi("LazyH2", { fg = c.amber, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.peach })
hi("LazyCommitType", { fg = c.orange })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.orange_bright })
hi("LazyReasonPlugin", { fg = c.orange })
hi("LazyReasonCmd", { fg = c.amber })
hi("LazyReasonEvent", { fg = c.peach })
hi("LazyReasonFt", { fg = c.amber_dim })
hi("LazyReasonKeys", { fg = c.orange_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.amber })
hi("LazyUrl", { fg = c.peach, underline = true })
hi("LazyValue", { fg = c.amber })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.amber, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.orange_bright, bold = true })
hi("MasonHighlight", { fg = c.amber })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.amber })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.amber, bold = true })
hi("MasonHighlightSecondary", { fg = c.orange_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.amber, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.amber })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.amber })
hi("DashboardIcon", { fg = c.orange_bright })
hi("DashboardShortCut", { fg = c.orange })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.amber, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.amber_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.amber, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.orange
vim.g.terminal_color_2 = c.amber
vim.g.terminal_color_3 = c.amber_light
vim.g.terminal_color_4 = c.orange_bright
vim.g.terminal_color_5 = c.amber
vim.g.terminal_color_6 = c.orange_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.amber_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.peach
vim.g.terminal_color_14 = c.amber_dim
vim.g.terminal_color_15 = c.fg_bright
