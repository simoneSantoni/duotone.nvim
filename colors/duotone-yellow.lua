-- Duotone Yellow colorscheme for Neovim
-- Monochromatic yellow variation of duotone

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "duotone-yellow"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#1a1a14",
  bg_light = "#28281e",
  bg_lighter = "#484838",
  fg = "#a0a080",
  fg_dim = "#7a7a5a",
  fg_dimmer = "#6a6a4a",
  fg_bright = "#ffffa8",
  white = "#fbfbf7",

  -- Primary accent (yellow)
  yellow = "#c0b020",
  yellow_bright = "#d0c030",
  yellow_light = "#e0d040",
  cream = "#f0e888",

  -- Secondary accent (gold/olive)
  gold = "#b0a030",
  gold_bright = "#c0b040",
  gold_light = "#d8c858",
  gold_dark = "#706000",
  gold_darker = "#888020",
  gold_muted = "#605820",
  gold_dim = "#a89830",

  -- Semantic
  cursor = "#706000",
  selection = "#383828",
  comment = "#6a6a4a",
  line_nr = "#484838",

  -- Diff colors
  diff_add = "#888020",
  diff_change = "#605820",
  diff_delete = "#c0b020",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#d8c858",
  info = "#e0d040",
  hint = "#7a7a5a",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.gold, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.gold, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.gold })
hi("IncSearch", { fg = c.bg, bg = c.gold_bright })
hi("CurSearch", { fg = c.bg, bg = c.gold_light })
hi("Substitute", { fg = c.bg, bg = c.yellow })
hi("MatchParen", { fg = c.gold_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.yellow_bright })
hi("Title", { fg = c.gold, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.gold })
hi("Question", { fg = c.gold })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.gold })
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
hi("Constant", { fg = c.cream })
hi("String", { fg = c.gold })
hi("Character", { fg = c.gold })
hi("Number", { fg = c.cream })
hi("Boolean", { fg = c.cream })
hi("Float", { fg = c.cream })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.yellow_bright })
hi("Statement", { fg = c.yellow })
hi("Conditional", { fg = c.yellow })
hi("Repeat", { fg = c.yellow })
hi("Label", { fg = c.yellow })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.yellow, italic = true })
hi("Exception", { fg = c.yellow })
hi("PreProc", { fg = c.yellow_light })
hi("Include", { fg = c.yellow })
hi("Define", { fg = c.yellow })
hi("Macro", { fg = c.yellow_light })
hi("PreCondit", { fg = c.yellow })
hi("Type", { fg = c.gold_dim })
hi("StorageClass", { fg = c.yellow })
hi("Structure", { fg = c.gold_dim })
hi("Typedef", { fg = c.gold_dim })
hi("Special", { fg = c.yellow_light })
hi("SpecialChar", { fg = c.gold_bright })
hi("Tag", { fg = c.yellow })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.gold, bold = true })

-- Diff
hi("DiffAdd", { fg = c.gold, bg = "#2a2a1a" })
hi("DiffChange", { fg = c.yellow, bg = "#28281a" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.gold })
hi("Changed", { fg = c.yellow })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.gold })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#2a2a1a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#2a2a1a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.gold, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.yellow_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.cream })
hi("@constant.builtin", { fg = c.cream, italic = true })
hi("@constant.macro", { fg = c.cream })
hi("@module", { fg = c.yellow })
hi("@label", { fg = c.yellow })
hi("@string", { fg = c.gold })
hi("@string.documentation", { fg = c.gold })
hi("@string.regexp", { fg = c.gold_bright })
hi("@string.escape", { fg = c.gold_bright })
hi("@string.special", { fg = c.gold_bright })
hi("@character", { fg = c.gold })
hi("@character.special", { fg = c.gold_bright })
hi("@boolean", { fg = c.cream })
hi("@number", { fg = c.cream })
hi("@number.float", { fg = c.cream })
hi("@type", { fg = c.gold_dim })
hi("@type.builtin", { fg = c.gold_dim, italic = true })
hi("@type.definition", { fg = c.gold_dim })
hi("@type.qualifier", { fg = c.yellow })
hi("@attribute", { fg = c.yellow_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.yellow_bright })
hi("@function.builtin", { fg = c.yellow_bright, italic = true })
hi("@function.call", { fg = c.yellow_bright })
hi("@function.macro", { fg = c.yellow_light })
hi("@function.method", { fg = c.yellow_bright })
hi("@function.method.call", { fg = c.yellow_bright })
hi("@constructor", { fg = c.yellow_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.yellow, italic = true })
hi("@keyword.coroutine", { fg = c.yellow, italic = true })
hi("@keyword.function", { fg = c.yellow, italic = true })
hi("@keyword.operator", { fg = c.yellow })
hi("@keyword.import", { fg = c.yellow })
hi("@keyword.storage", { fg = c.yellow })
hi("@keyword.repeat", { fg = c.yellow })
hi("@keyword.return", { fg = c.yellow })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.yellow })
hi("@keyword.conditional", { fg = c.yellow })
hi("@keyword.conditional.ternary", { fg = c.yellow })
hi("@keyword.directive", { fg = c.yellow_light })
hi("@keyword.directive.define", { fg = c.yellow_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.yellow_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.gold, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.gold, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.cream })
hi("@markup.link", { fg = c.yellow_bright, underline = true })
hi("@markup.link.label", { fg = c.cream })
hi("@markup.link.url", { fg = c.cream, underline = true })
hi("@markup.raw", { fg = c.gold })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.yellow })
hi("@markup.list.checked", { fg = c.gold })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.gold })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.yellow })
hi("@tag", { fg = c.yellow })
hi("@tag.attribute", { fg = c.gold_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.gold })
hi("GitSignsChange", { fg = c.yellow })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.gold, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.gold, bold = true })
hi("TelescopePromptPrefix", { fg = c.gold })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.gold, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.gold, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.gold, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.gold_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.yellow_bright })
hi("NvimTreeFolderName", { fg = c.yellow_bright })
hi("NvimTreeOpenedFolderName", { fg = c.yellow_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.gold, bold = true })
hi("NvimTreeSpecialFile", { fg = c.gold_light })
hi("NvimTreeGitDirty", { fg = c.yellow })
hi("NvimTreeGitNew", { fg = c.gold })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.yellow_bright })
hi("NeoTreeDirectoryName", { fg = c.yellow_bright })
hi("NeoTreeRootName", { fg = c.gold, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.gold })
hi("NeoTreeGitModified", { fg = c.yellow })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.gold })
hi("WhichKeyGroup", { fg = c.yellow_bright })
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
hi("NoiceCmdlineIcon", { fg = c.gold })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.gold, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.yellow_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.cream, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.gold_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.gold, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.gold })
hi("CmpItemKind", { fg = c.yellow_bright })
hi("CmpItemKindClass", { fg = c.gold_dim })
hi("CmpItemKindColor", { fg = c.cream })
hi("CmpItemKindConstant", { fg = c.cream })
hi("CmpItemKindConstructor", { fg = c.yellow_bright })
hi("CmpItemKindEnum", { fg = c.gold_dim })
hi("CmpItemKindEnumMember", { fg = c.cream })
hi("CmpItemKindEvent", { fg = c.yellow })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.yellow_bright })
hi("CmpItemKindFunction", { fg = c.yellow_bright })
hi("CmpItemKindInterface", { fg = c.gold_dim })
hi("CmpItemKindKeyword", { fg = c.yellow })
hi("CmpItemKindMethod", { fg = c.yellow_bright })
hi("CmpItemKindModule", { fg = c.yellow })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.gold })
hi("CmpItemKindStruct", { fg = c.gold_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.gold_dim })
hi("CmpItemKindUnit", { fg = c.cream })
hi("CmpItemKindValue", { fg = c.cream })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.gold, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.gold, bold = true })
hi("LazyH2", { fg = c.gold, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.cream })
hi("LazyCommitType", { fg = c.yellow })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.yellow_bright })
hi("LazyReasonPlugin", { fg = c.yellow })
hi("LazyReasonCmd", { fg = c.gold })
hi("LazyReasonEvent", { fg = c.cream })
hi("LazyReasonFt", { fg = c.gold_dim })
hi("LazyReasonKeys", { fg = c.yellow_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.gold })
hi("LazyUrl", { fg = c.cream, underline = true })
hi("LazyValue", { fg = c.gold })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.gold, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.yellow_bright, bold = true })
hi("MasonHighlight", { fg = c.gold })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.gold })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.gold, bold = true })
hi("MasonHighlightSecondary", { fg = c.yellow_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.gold, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.gold })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.gold })
hi("DashboardIcon", { fg = c.yellow_bright })
hi("DashboardShortCut", { fg = c.yellow })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.gold, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.gold_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.gold, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.yellow
vim.g.terminal_color_2 = c.gold
vim.g.terminal_color_3 = c.gold_light
vim.g.terminal_color_4 = c.yellow_bright
vim.g.terminal_color_5 = c.gold
vim.g.terminal_color_6 = c.yellow_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.gold_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.cream
vim.g.terminal_color_14 = c.gold_dim
vim.g.terminal_color_15 = c.fg_bright
