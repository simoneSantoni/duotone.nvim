-- Duotone Magenta colorscheme for Neovim
-- Monochromatic magenta variation of duotone

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "duotone-magenta"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#1c1420",
  bg_light = "#2a1e30",
  bg_lighter = "#4a3852",
  fg = "#a080a8",
  fg_dim = "#7a5a80",
  fg_dimmer = "#6a4a70",
  fg_bright = "#ffa8ff",
  white = "#fbf7fb",

  -- Primary accent (magenta)
  magenta = "#d020a0",
  magenta_bright = "#e030b0",
  magenta_light = "#f040c0",
  pink = "#ff88e0",

  -- Secondary accent (rose/fuchsia)
  rose = "#e030a0",
  rose_bright = "#f040b0",
  rose_light = "#ff58c8",
  rose_dark = "#900070",
  rose_darker = "#a80088",
  rose_muted = "#702060",
  rose_dim = "#d03090",

  -- Semantic
  cursor = "#900070",
  selection = "#382840",
  comment = "#6a4a70",
  line_nr = "#4a3852",

  -- Diff colors
  diff_add = "#a80088",
  diff_change = "#702060",
  diff_delete = "#d020a0",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#ff58c8",
  info = "#f040c0",
  hint = "#7a5a80",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.rose, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.rose, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.rose })
hi("IncSearch", { fg = c.bg, bg = c.rose_bright })
hi("CurSearch", { fg = c.bg, bg = c.rose_light })
hi("Substitute", { fg = c.bg, bg = c.magenta })
hi("MatchParen", { fg = c.rose_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.magenta_bright })
hi("Title", { fg = c.rose, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.rose })
hi("Question", { fg = c.rose })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.rose })
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
hi("Constant", { fg = c.pink })
hi("String", { fg = c.rose })
hi("Character", { fg = c.rose })
hi("Number", { fg = c.pink })
hi("Boolean", { fg = c.pink })
hi("Float", { fg = c.pink })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.magenta_bright })
hi("Statement", { fg = c.magenta })
hi("Conditional", { fg = c.magenta })
hi("Repeat", { fg = c.magenta })
hi("Label", { fg = c.magenta })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.magenta, italic = true })
hi("Exception", { fg = c.magenta })
hi("PreProc", { fg = c.magenta_light })
hi("Include", { fg = c.magenta })
hi("Define", { fg = c.magenta })
hi("Macro", { fg = c.magenta_light })
hi("PreCondit", { fg = c.magenta })
hi("Type", { fg = c.rose_dim })
hi("StorageClass", { fg = c.magenta })
hi("Structure", { fg = c.rose_dim })
hi("Typedef", { fg = c.rose_dim })
hi("Special", { fg = c.magenta_light })
hi("SpecialChar", { fg = c.rose_bright })
hi("Tag", { fg = c.magenta })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.rose, bold = true })

-- Diff
hi("DiffAdd", { fg = c.rose, bg = "#2e1a2a" })
hi("DiffChange", { fg = c.magenta, bg = "#281a28" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.rose })
hi("Changed", { fg = c.magenta })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.rose })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#2a1a2a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#2a1a2a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.rose, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.magenta_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.pink })
hi("@constant.builtin", { fg = c.pink, italic = true })
hi("@constant.macro", { fg = c.pink })
hi("@module", { fg = c.magenta })
hi("@label", { fg = c.magenta })
hi("@string", { fg = c.rose })
hi("@string.documentation", { fg = c.rose })
hi("@string.regexp", { fg = c.rose_bright })
hi("@string.escape", { fg = c.rose_bright })
hi("@string.special", { fg = c.rose_bright })
hi("@character", { fg = c.rose })
hi("@character.special", { fg = c.rose_bright })
hi("@boolean", { fg = c.pink })
hi("@number", { fg = c.pink })
hi("@number.float", { fg = c.pink })
hi("@type", { fg = c.rose_dim })
hi("@type.builtin", { fg = c.rose_dim, italic = true })
hi("@type.definition", { fg = c.rose_dim })
hi("@type.qualifier", { fg = c.magenta })
hi("@attribute", { fg = c.magenta_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.magenta_bright })
hi("@function.builtin", { fg = c.magenta_bright, italic = true })
hi("@function.call", { fg = c.magenta_bright })
hi("@function.macro", { fg = c.magenta_light })
hi("@function.method", { fg = c.magenta_bright })
hi("@function.method.call", { fg = c.magenta_bright })
hi("@constructor", { fg = c.magenta_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.magenta, italic = true })
hi("@keyword.coroutine", { fg = c.magenta, italic = true })
hi("@keyword.function", { fg = c.magenta, italic = true })
hi("@keyword.operator", { fg = c.magenta })
hi("@keyword.import", { fg = c.magenta })
hi("@keyword.storage", { fg = c.magenta })
hi("@keyword.repeat", { fg = c.magenta })
hi("@keyword.return", { fg = c.magenta })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.magenta })
hi("@keyword.conditional", { fg = c.magenta })
hi("@keyword.conditional.ternary", { fg = c.magenta })
hi("@keyword.directive", { fg = c.magenta_light })
hi("@keyword.directive.define", { fg = c.magenta_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.magenta_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.rose, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.rose, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.pink })
hi("@markup.link", { fg = c.magenta_bright, underline = true })
hi("@markup.link.label", { fg = c.pink })
hi("@markup.link.url", { fg = c.pink, underline = true })
hi("@markup.raw", { fg = c.rose })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.magenta })
hi("@markup.list.checked", { fg = c.rose })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.rose })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.magenta })
hi("@tag", { fg = c.magenta })
hi("@tag.attribute", { fg = c.rose_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.rose })
hi("GitSignsChange", { fg = c.magenta })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.rose, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.rose, bold = true })
hi("TelescopePromptPrefix", { fg = c.rose })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.rose, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.rose, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.rose, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.rose_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.magenta_bright })
hi("NvimTreeFolderName", { fg = c.magenta_bright })
hi("NvimTreeOpenedFolderName", { fg = c.magenta_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.rose, bold = true })
hi("NvimTreeSpecialFile", { fg = c.rose_light })
hi("NvimTreeGitDirty", { fg = c.magenta })
hi("NvimTreeGitNew", { fg = c.rose })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.magenta_bright })
hi("NeoTreeDirectoryName", { fg = c.magenta_bright })
hi("NeoTreeRootName", { fg = c.rose, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.rose })
hi("NeoTreeGitModified", { fg = c.magenta })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.rose })
hi("WhichKeyGroup", { fg = c.magenta_bright })
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
hi("NoiceCmdlineIcon", { fg = c.rose })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.rose, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.magenta_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.pink, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.rose_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.rose, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.rose })
hi("CmpItemKind", { fg = c.magenta_bright })
hi("CmpItemKindClass", { fg = c.rose_dim })
hi("CmpItemKindColor", { fg = c.pink })
hi("CmpItemKindConstant", { fg = c.pink })
hi("CmpItemKindConstructor", { fg = c.magenta_bright })
hi("CmpItemKindEnum", { fg = c.rose_dim })
hi("CmpItemKindEnumMember", { fg = c.pink })
hi("CmpItemKindEvent", { fg = c.magenta })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.magenta_bright })
hi("CmpItemKindFunction", { fg = c.magenta_bright })
hi("CmpItemKindInterface", { fg = c.rose_dim })
hi("CmpItemKindKeyword", { fg = c.magenta })
hi("CmpItemKindMethod", { fg = c.magenta_bright })
hi("CmpItemKindModule", { fg = c.magenta })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.rose })
hi("CmpItemKindStruct", { fg = c.rose_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.rose_dim })
hi("CmpItemKindUnit", { fg = c.pink })
hi("CmpItemKindValue", { fg = c.pink })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.rose, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.rose, bold = true })
hi("LazyH2", { fg = c.rose, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.pink })
hi("LazyCommitType", { fg = c.magenta })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.magenta_bright })
hi("LazyReasonPlugin", { fg = c.magenta })
hi("LazyReasonCmd", { fg = c.rose })
hi("LazyReasonEvent", { fg = c.pink })
hi("LazyReasonFt", { fg = c.rose_dim })
hi("LazyReasonKeys", { fg = c.magenta_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.rose })
hi("LazyUrl", { fg = c.pink, underline = true })
hi("LazyValue", { fg = c.rose })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.rose, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.magenta_bright, bold = true })
hi("MasonHighlight", { fg = c.rose })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.rose })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.rose, bold = true })
hi("MasonHighlightSecondary", { fg = c.magenta_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.rose, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.rose })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.rose })
hi("DashboardIcon", { fg = c.magenta_bright })
hi("DashboardShortCut", { fg = c.magenta })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.rose, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.rose_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.rose, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.magenta
vim.g.terminal_color_2 = c.rose
vim.g.terminal_color_3 = c.rose_light
vim.g.terminal_color_4 = c.magenta_bright
vim.g.terminal_color_5 = c.rose
vim.g.terminal_color_6 = c.magenta_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.rose_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.pink
vim.g.terminal_color_14 = c.rose_dim
vim.g.terminal_color_15 = c.fg_bright
