-- Base2Tone Field Blue colorscheme for Neovim
-- Monochromatic blue variation of base2tone-field

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "base2tone-field-blue"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#141820",
  bg_light = "#1e2430",
  bg_lighter = "#384252",
  fg = "#8090a8",
  fg_dim = "#5a6a80",
  fg_dimmer = "#4a5a70",
  fg_bright = "#a8d0ff",
  white = "#f7f9fb",

  -- Primary accent (blue)
  blue = "#2080e0",
  blue_bright = "#30a0f0",
  blue_light = "#40b0ff",
  sky = "#88d0ff",

  -- Secondary accent (cyan/azure)
  azure = "#30a0e0",
  azure_bright = "#40b0f0",
  azure_light = "#58c0ff",
  azure_dark = "#005090",
  azure_darker = "#0060a8",
  azure_muted = "#204870",
  azure_dim = "#3090d0",

  -- Semantic
  cursor = "#005090",
  selection = "#283040",
  comment = "#4a5a70",
  line_nr = "#384252",

  -- Diff colors
  diff_add = "#0060a8",
  diff_change = "#204870",
  diff_delete = "#2080e0",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#58c0ff",
  info = "#40b0ff",
  hint = "#5a6a80",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.azure, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.azure, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.azure })
hi("IncSearch", { fg = c.bg, bg = c.azure_bright })
hi("CurSearch", { fg = c.bg, bg = c.azure_light })
hi("Substitute", { fg = c.bg, bg = c.blue })
hi("MatchParen", { fg = c.azure_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.blue_bright })
hi("Title", { fg = c.azure, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.azure })
hi("Question", { fg = c.azure })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.azure })
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
hi("Constant", { fg = c.sky })
hi("String", { fg = c.azure })
hi("Character", { fg = c.azure })
hi("Number", { fg = c.sky })
hi("Boolean", { fg = c.sky })
hi("Float", { fg = c.sky })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.blue_bright })
hi("Statement", { fg = c.blue })
hi("Conditional", { fg = c.blue })
hi("Repeat", { fg = c.blue })
hi("Label", { fg = c.blue })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.blue, italic = true })
hi("Exception", { fg = c.blue })
hi("PreProc", { fg = c.blue_light })
hi("Include", { fg = c.blue })
hi("Define", { fg = c.blue })
hi("Macro", { fg = c.blue_light })
hi("PreCondit", { fg = c.blue })
hi("Type", { fg = c.azure_dim })
hi("StorageClass", { fg = c.blue })
hi("Structure", { fg = c.azure_dim })
hi("Typedef", { fg = c.azure_dim })
hi("Special", { fg = c.blue_light })
hi("SpecialChar", { fg = c.azure_bright })
hi("Tag", { fg = c.blue })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.azure, bold = true })

-- Diff
hi("DiffAdd", { fg = c.azure, bg = "#1a2030" })
hi("DiffChange", { fg = c.blue, bg = "#1a2028" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.azure })
hi("Changed", { fg = c.blue })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.azure })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#1a2a2a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#1a202a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.azure, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.blue_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.sky })
hi("@constant.builtin", { fg = c.sky, italic = true })
hi("@constant.macro", { fg = c.sky })
hi("@module", { fg = c.blue })
hi("@label", { fg = c.blue })
hi("@string", { fg = c.azure })
hi("@string.documentation", { fg = c.azure })
hi("@string.regexp", { fg = c.azure_bright })
hi("@string.escape", { fg = c.azure_bright })
hi("@string.special", { fg = c.azure_bright })
hi("@character", { fg = c.azure })
hi("@character.special", { fg = c.azure_bright })
hi("@boolean", { fg = c.sky })
hi("@number", { fg = c.sky })
hi("@number.float", { fg = c.sky })
hi("@type", { fg = c.azure_dim })
hi("@type.builtin", { fg = c.azure_dim, italic = true })
hi("@type.definition", { fg = c.azure_dim })
hi("@type.qualifier", { fg = c.blue })
hi("@attribute", { fg = c.blue_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.blue_bright })
hi("@function.builtin", { fg = c.blue_bright, italic = true })
hi("@function.call", { fg = c.blue_bright })
hi("@function.macro", { fg = c.blue_light })
hi("@function.method", { fg = c.blue_bright })
hi("@function.method.call", { fg = c.blue_bright })
hi("@constructor", { fg = c.blue_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.blue, italic = true })
hi("@keyword.coroutine", { fg = c.blue, italic = true })
hi("@keyword.function", { fg = c.blue, italic = true })
hi("@keyword.operator", { fg = c.blue })
hi("@keyword.import", { fg = c.blue })
hi("@keyword.storage", { fg = c.blue })
hi("@keyword.repeat", { fg = c.blue })
hi("@keyword.return", { fg = c.blue })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.blue })
hi("@keyword.conditional", { fg = c.blue })
hi("@keyword.conditional.ternary", { fg = c.blue })
hi("@keyword.directive", { fg = c.blue_light })
hi("@keyword.directive.define", { fg = c.blue_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.blue_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.azure, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.azure, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.sky })
hi("@markup.link", { fg = c.blue_bright, underline = true })
hi("@markup.link.label", { fg = c.sky })
hi("@markup.link.url", { fg = c.sky, underline = true })
hi("@markup.raw", { fg = c.azure })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.blue })
hi("@markup.list.checked", { fg = c.azure })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.azure })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.blue })
hi("@tag", { fg = c.blue })
hi("@tag.attribute", { fg = c.azure_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.azure })
hi("GitSignsChange", { fg = c.blue })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.azure, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.azure, bold = true })
hi("TelescopePromptPrefix", { fg = c.azure })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.azure, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.azure, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.azure, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.azure_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.blue_bright })
hi("NvimTreeFolderName", { fg = c.blue_bright })
hi("NvimTreeOpenedFolderName", { fg = c.blue_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.azure, bold = true })
hi("NvimTreeSpecialFile", { fg = c.azure_light })
hi("NvimTreeGitDirty", { fg = c.blue })
hi("NvimTreeGitNew", { fg = c.azure })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.blue_bright })
hi("NeoTreeDirectoryName", { fg = c.blue_bright })
hi("NeoTreeRootName", { fg = c.azure, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.azure })
hi("NeoTreeGitModified", { fg = c.blue })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.azure })
hi("WhichKeyGroup", { fg = c.blue_bright })
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
hi("NoiceCmdlineIcon", { fg = c.azure })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.azure, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.blue_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.sky, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.azure_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.azure, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.azure })
hi("CmpItemKind", { fg = c.blue_bright })
hi("CmpItemKindClass", { fg = c.azure_dim })
hi("CmpItemKindColor", { fg = c.sky })
hi("CmpItemKindConstant", { fg = c.sky })
hi("CmpItemKindConstructor", { fg = c.blue_bright })
hi("CmpItemKindEnum", { fg = c.azure_dim })
hi("CmpItemKindEnumMember", { fg = c.sky })
hi("CmpItemKindEvent", { fg = c.blue })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.blue_bright })
hi("CmpItemKindFunction", { fg = c.blue_bright })
hi("CmpItemKindInterface", { fg = c.azure_dim })
hi("CmpItemKindKeyword", { fg = c.blue })
hi("CmpItemKindMethod", { fg = c.blue_bright })
hi("CmpItemKindModule", { fg = c.blue })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.azure })
hi("CmpItemKindStruct", { fg = c.azure_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.azure_dim })
hi("CmpItemKindUnit", { fg = c.sky })
hi("CmpItemKindValue", { fg = c.sky })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.azure, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.azure, bold = true })
hi("LazyH2", { fg = c.azure, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.sky })
hi("LazyCommitType", { fg = c.blue })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.blue_bright })
hi("LazyReasonPlugin", { fg = c.blue })
hi("LazyReasonCmd", { fg = c.azure })
hi("LazyReasonEvent", { fg = c.sky })
hi("LazyReasonFt", { fg = c.azure_dim })
hi("LazyReasonKeys", { fg = c.blue_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.azure })
hi("LazyUrl", { fg = c.sky, underline = true })
hi("LazyValue", { fg = c.azure })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.azure, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.blue_bright, bold = true })
hi("MasonHighlight", { fg = c.azure })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.azure })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.azure, bold = true })
hi("MasonHighlightSecondary", { fg = c.blue_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.azure, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.azure })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.azure })
hi("DashboardIcon", { fg = c.blue_bright })
hi("DashboardShortCut", { fg = c.blue })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.azure, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.azure_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.azure, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.blue
vim.g.terminal_color_2 = c.azure
vim.g.terminal_color_3 = c.azure_light
vim.g.terminal_color_4 = c.blue_bright
vim.g.terminal_color_5 = c.azure
vim.g.terminal_color_6 = c.blue_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.azure_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.sky
vim.g.terminal_color_14 = c.azure_dim
vim.g.terminal_color_15 = c.fg_bright
