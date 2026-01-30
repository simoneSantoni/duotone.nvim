-- Duotone Gray colorscheme for Neovim
-- Monochromatic gray variation of duotone

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "duotone-gray"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#181818",
  bg_light = "#242424",
  bg_lighter = "#424242",
  fg = "#a0a0a0",
  fg_dim = "#707070",
  fg_dimmer = "#606060",
  fg_bright = "#e0e0e0",
  white = "#f8f8f8",

  -- Primary accent (silver/gray)
  silver = "#909090",
  silver_bright = "#a8a8a8",
  silver_light = "#c0c0c0",
  platinum = "#d8d8d8",

  -- Secondary accent (slate)
  slate = "#989898",
  slate_bright = "#b0b0b0",
  slate_light = "#c8c8c8",
  slate_dark = "#505050",
  slate_darker = "#606060",
  slate_muted = "#484848",
  slate_dim = "#888888",

  -- Semantic
  cursor = "#505050",
  selection = "#383838",
  comment = "#606060",
  line_nr = "#424242",

  -- Diff colors
  diff_add = "#606060",
  diff_change = "#484848",
  diff_delete = "#909090",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#c8c8c8",
  info = "#c0c0c0",
  hint = "#707070",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.slate, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.slate, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.slate })
hi("IncSearch", { fg = c.bg, bg = c.slate_bright })
hi("CurSearch", { fg = c.bg, bg = c.slate_light })
hi("Substitute", { fg = c.bg, bg = c.silver })
hi("MatchParen", { fg = c.slate_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.silver_bright })
hi("Title", { fg = c.slate, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.slate })
hi("Question", { fg = c.slate })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.slate })
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
hi("Constant", { fg = c.platinum })
hi("String", { fg = c.slate })
hi("Character", { fg = c.slate })
hi("Number", { fg = c.platinum })
hi("Boolean", { fg = c.platinum })
hi("Float", { fg = c.platinum })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.silver_bright })
hi("Statement", { fg = c.silver })
hi("Conditional", { fg = c.silver })
hi("Repeat", { fg = c.silver })
hi("Label", { fg = c.silver })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.silver, italic = true })
hi("Exception", { fg = c.silver })
hi("PreProc", { fg = c.silver_light })
hi("Include", { fg = c.silver })
hi("Define", { fg = c.silver })
hi("Macro", { fg = c.silver_light })
hi("PreCondit", { fg = c.silver })
hi("Type", { fg = c.slate_dim })
hi("StorageClass", { fg = c.silver })
hi("Structure", { fg = c.slate_dim })
hi("Typedef", { fg = c.slate_dim })
hi("Special", { fg = c.silver_light })
hi("SpecialChar", { fg = c.slate_bright })
hi("Tag", { fg = c.silver })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.slate, bold = true })

-- Diff
hi("DiffAdd", { fg = c.slate, bg = "#282828" })
hi("DiffChange", { fg = c.silver, bg = "#262626" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.slate })
hi("Changed", { fg = c.silver })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.slate })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#2a2a2a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#262626" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.slate, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.silver_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.platinum })
hi("@constant.builtin", { fg = c.platinum, italic = true })
hi("@constant.macro", { fg = c.platinum })
hi("@module", { fg = c.silver })
hi("@label", { fg = c.silver })
hi("@string", { fg = c.slate })
hi("@string.documentation", { fg = c.slate })
hi("@string.regexp", { fg = c.slate_bright })
hi("@string.escape", { fg = c.slate_bright })
hi("@string.special", { fg = c.slate_bright })
hi("@character", { fg = c.slate })
hi("@character.special", { fg = c.slate_bright })
hi("@boolean", { fg = c.platinum })
hi("@number", { fg = c.platinum })
hi("@number.float", { fg = c.platinum })
hi("@type", { fg = c.slate_dim })
hi("@type.builtin", { fg = c.slate_dim, italic = true })
hi("@type.definition", { fg = c.slate_dim })
hi("@type.qualifier", { fg = c.silver })
hi("@attribute", { fg = c.silver_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.silver_bright })
hi("@function.builtin", { fg = c.silver_bright, italic = true })
hi("@function.call", { fg = c.silver_bright })
hi("@function.macro", { fg = c.silver_light })
hi("@function.method", { fg = c.silver_bright })
hi("@function.method.call", { fg = c.silver_bright })
hi("@constructor", { fg = c.silver_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.silver, italic = true })
hi("@keyword.coroutine", { fg = c.silver, italic = true })
hi("@keyword.function", { fg = c.silver, italic = true })
hi("@keyword.operator", { fg = c.silver })
hi("@keyword.import", { fg = c.silver })
hi("@keyword.storage", { fg = c.silver })
hi("@keyword.repeat", { fg = c.silver })
hi("@keyword.return", { fg = c.silver })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.silver })
hi("@keyword.conditional", { fg = c.silver })
hi("@keyword.conditional.ternary", { fg = c.silver })
hi("@keyword.directive", { fg = c.silver_light })
hi("@keyword.directive.define", { fg = c.silver_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.silver_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.slate, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.slate, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.platinum })
hi("@markup.link", { fg = c.silver_bright, underline = true })
hi("@markup.link.label", { fg = c.platinum })
hi("@markup.link.url", { fg = c.platinum, underline = true })
hi("@markup.raw", { fg = c.slate })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.silver })
hi("@markup.list.checked", { fg = c.slate })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.slate })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.silver })
hi("@tag", { fg = c.silver })
hi("@tag.attribute", { fg = c.slate_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.slate })
hi("GitSignsChange", { fg = c.silver })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.slate, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.slate, bold = true })
hi("TelescopePromptPrefix", { fg = c.slate })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.slate, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.slate, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.slate, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.slate_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.silver_bright })
hi("NvimTreeFolderName", { fg = c.silver_bright })
hi("NvimTreeOpenedFolderName", { fg = c.silver_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.slate, bold = true })
hi("NvimTreeSpecialFile", { fg = c.slate_light })
hi("NvimTreeGitDirty", { fg = c.silver })
hi("NvimTreeGitNew", { fg = c.slate })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.silver_bright })
hi("NeoTreeDirectoryName", { fg = c.silver_bright })
hi("NeoTreeRootName", { fg = c.slate, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.slate })
hi("NeoTreeGitModified", { fg = c.silver })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.slate })
hi("WhichKeyGroup", { fg = c.silver_bright })
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
hi("NoiceCmdlineIcon", { fg = c.slate })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.slate, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.silver_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.platinum, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.slate_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.slate, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.slate })
hi("CmpItemKind", { fg = c.silver_bright })
hi("CmpItemKindClass", { fg = c.slate_dim })
hi("CmpItemKindColor", { fg = c.platinum })
hi("CmpItemKindConstant", { fg = c.platinum })
hi("CmpItemKindConstructor", { fg = c.silver_bright })
hi("CmpItemKindEnum", { fg = c.slate_dim })
hi("CmpItemKindEnumMember", { fg = c.platinum })
hi("CmpItemKindEvent", { fg = c.silver })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.silver_bright })
hi("CmpItemKindFunction", { fg = c.silver_bright })
hi("CmpItemKindInterface", { fg = c.slate_dim })
hi("CmpItemKindKeyword", { fg = c.silver })
hi("CmpItemKindMethod", { fg = c.silver_bright })
hi("CmpItemKindModule", { fg = c.silver })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.slate })
hi("CmpItemKindStruct", { fg = c.slate_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.slate_dim })
hi("CmpItemKindUnit", { fg = c.platinum })
hi("CmpItemKindValue", { fg = c.platinum })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.slate, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.slate, bold = true })
hi("LazyH2", { fg = c.slate, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.platinum })
hi("LazyCommitType", { fg = c.silver })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.silver_bright })
hi("LazyReasonPlugin", { fg = c.silver })
hi("LazyReasonCmd", { fg = c.slate })
hi("LazyReasonEvent", { fg = c.platinum })
hi("LazyReasonFt", { fg = c.slate_dim })
hi("LazyReasonKeys", { fg = c.silver_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.slate })
hi("LazyUrl", { fg = c.platinum, underline = true })
hi("LazyValue", { fg = c.slate })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.slate, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.silver_bright, bold = true })
hi("MasonHighlight", { fg = c.slate })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.slate })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.slate, bold = true })
hi("MasonHighlightSecondary", { fg = c.silver_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.slate, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.slate })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.slate })
hi("DashboardIcon", { fg = c.silver_bright })
hi("DashboardShortCut", { fg = c.silver })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.slate, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.slate_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.slate, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.silver
vim.g.terminal_color_2 = c.slate
vim.g.terminal_color_3 = c.slate_light
vim.g.terminal_color_4 = c.silver_bright
vim.g.terminal_color_5 = c.slate
vim.g.terminal_color_6 = c.silver_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.slate_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.platinum
vim.g.terminal_color_14 = c.slate_dim
vim.g.terminal_color_15 = c.fg_bright
