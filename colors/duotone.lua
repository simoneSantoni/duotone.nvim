-- Duotone Dark colorscheme for Neovim
-- Based on: https://github.com/atelierbram/Base2Tone-kitty
-- Author: Bram de Haan (original), adapted for Neovim

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "duotone"
vim.o.termguicolors = true
vim.o.background = "dark"

local c = {
  -- Base colors
  bg = "#18201e",
  bg_light = "#242e2c",
  bg_lighter = "#42524f",
  fg = "#8ea4a0",
  fg_dim = "#667a77",
  fg_dimmer = "#5a6d6a",
  fg_bright = "#a8fff1",
  white = "#f9fbfa",

  -- Accent colors (teal/turquoise)
  teal = "#0fbda0",
  teal_bright = "#25d0b4",
  teal_light = "#40ddc3",
  cyan = "#88f2e0",

  -- Secondary accent (green)
  green = "#3be381",
  green_bright = "#55ec94",
  green_light = "#85ffb8",
  green_dark = "#00943e",
  green_darker = "#0eaa4f",
  green_muted = "#037764",
  green_dim = "#25d46e",

  -- Semantic
  cursor = "#00943e",
  selection = "#303c3a",
  comment = "#5a6d6a",
  line_nr = "#42524f",

  -- Diff colors
  diff_add = "#0eaa4f",
  diff_change = "#037764",
  diff_delete = "#0fbda0",

  -- Diagnostic colors
  error = "#ff6b6b",
  warn = "#85ffb8",
  info = "#40ddc3",
  hint = "#667a77",

  none = "NONE",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- Editor
hi("Normal", { fg = c.fg, bg = c.bg })
hi("NormalFloat", { fg = c.fg, bg = c.bg_light })
hi("FloatBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("FloatTitle", { fg = c.green, bg = c.bg_light, bold = true })
hi("Cursor", { fg = c.bg, bg = c.cursor })
hi("CursorLine", { bg = c.selection })
hi("CursorLineNr", { fg = c.green, bg = c.selection, bold = true })
hi("CursorColumn", { bg = c.bg_light })
hi("ColorColumn", { bg = c.bg_light })
hi("LineNr", { fg = c.line_nr })
hi("SignColumn", { fg = c.fg_dim, bg = c.bg })
hi("VertSplit", { fg = c.bg_lighter })
hi("WinSeparator", { fg = c.bg_lighter })
hi("Visual", { bg = c.selection })
hi("VisualNOS", { bg = c.selection })
hi("Search", { fg = c.bg, bg = c.green })
hi("IncSearch", { fg = c.bg, bg = c.green_bright })
hi("CurSearch", { fg = c.bg, bg = c.green_light })
hi("Substitute", { fg = c.bg, bg = c.teal })
hi("MatchParen", { fg = c.green_light, bg = c.bg_lighter, bold = true })
hi("NonText", { fg = c.bg_lighter })
hi("Whitespace", { fg = c.bg_lighter })
hi("SpecialKey", { fg = c.bg_lighter })
hi("EndOfBuffer", { fg = c.bg })
hi("Folded", { fg = c.fg_dim, bg = c.bg_light })
hi("FoldColumn", { fg = c.fg_dim, bg = c.bg })
hi("Conceal", { fg = c.fg_dim })
hi("Directory", { fg = c.teal_bright })
hi("Title", { fg = c.green, bold = true })
hi("ErrorMsg", { fg = c.error, bold = true })
hi("WarningMsg", { fg = c.warn, bold = true })
hi("ModeMsg", { fg = c.fg, bold = true })
hi("MoreMsg", { fg = c.green })
hi("Question", { fg = c.green })
hi("StatusLine", { fg = c.fg, bg = c.bg_light })
hi("StatusLineNC", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLine", { fg = c.fg_dim, bg = c.bg_light })
hi("TabLineFill", { bg = c.bg_light })
hi("TabLineSel", { fg = c.white, bg = c.bg })
hi("WinBar", { fg = c.fg, bg = c.bg })
hi("WinBarNC", { fg = c.fg_dim, bg = c.bg })
hi("WildMenu", { fg = c.bg, bg = c.green })
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
hi("Constant", { fg = c.cyan })
hi("String", { fg = c.green })
hi("Character", { fg = c.green })
hi("Number", { fg = c.cyan })
hi("Boolean", { fg = c.cyan })
hi("Float", { fg = c.cyan })
hi("Identifier", { fg = c.fg })
hi("Function", { fg = c.teal_bright })
hi("Statement", { fg = c.teal })
hi("Conditional", { fg = c.teal })
hi("Repeat", { fg = c.teal })
hi("Label", { fg = c.teal })
hi("Operator", { fg = c.fg })
hi("Keyword", { fg = c.teal, italic = true })
hi("Exception", { fg = c.teal })
hi("PreProc", { fg = c.teal_light })
hi("Include", { fg = c.teal })
hi("Define", { fg = c.teal })
hi("Macro", { fg = c.teal_light })
hi("PreCondit", { fg = c.teal })
hi("Type", { fg = c.green_dim })
hi("StorageClass", { fg = c.teal })
hi("Structure", { fg = c.green_dim })
hi("Typedef", { fg = c.green_dim })
hi("Special", { fg = c.teal_light })
hi("SpecialChar", { fg = c.green_bright })
hi("Tag", { fg = c.teal })
hi("Delimiter", { fg = c.fg })
hi("SpecialComment", { fg = c.fg_dim, italic = true })
hi("Debug", { fg = c.warn })
hi("Underlined", { underline = true })
hi("Ignore", { fg = c.bg_lighter })
hi("Error", { fg = c.error })
hi("Todo", { fg = c.bg, bg = c.green, bold = true })

-- Diff
hi("DiffAdd", { fg = c.green, bg = "#1a2e1a" })
hi("DiffChange", { fg = c.teal, bg = "#1a2828" })
hi("DiffDelete", { fg = c.error, bg = "#2e1a1a" })
hi("DiffText", { fg = c.white, bg = c.diff_change })
hi("Added", { fg = c.green })
hi("Changed", { fg = c.teal })
hi("Removed", { fg = c.error })

-- Diagnostics
hi("DiagnosticError", { fg = c.error })
hi("DiagnosticWarn", { fg = c.warn })
hi("DiagnosticInfo", { fg = c.info })
hi("DiagnosticHint", { fg = c.hint })
hi("DiagnosticOk", { fg = c.green })
hi("DiagnosticVirtualTextError", { fg = c.error, bg = "#2a1a1a" })
hi("DiagnosticVirtualTextWarn", { fg = c.warn, bg = "#2a2a1a" })
hi("DiagnosticVirtualTextInfo", { fg = c.info, bg = "#1a2a2a" })
hi("DiagnosticVirtualTextHint", { fg = c.hint, bg = c.bg_light })
hi("DiagnosticUnderlineError", { undercurl = true, sp = c.error })
hi("DiagnosticUnderlineWarn", { undercurl = true, sp = c.warn })
hi("DiagnosticUnderlineInfo", { undercurl = true, sp = c.info })
hi("DiagnosticUnderlineHint", { undercurl = true, sp = c.hint })

-- LSP
hi("LspReferenceText", { bg = c.bg_lighter })
hi("LspReferenceRead", { bg = c.bg_lighter })
hi("LspReferenceWrite", { bg = c.bg_lighter })
hi("LspSignatureActiveParameter", { fg = c.green, bold = true })
hi("LspCodeLens", { fg = c.comment })
hi("LspInlayHint", { fg = c.comment, bg = c.bg_light, italic = true })

-- Treesitter
hi("@variable", { fg = c.fg })
hi("@variable.builtin", { fg = c.teal_light, italic = true })
hi("@variable.parameter", { fg = c.fg })
hi("@variable.member", { fg = c.fg })
hi("@constant", { fg = c.cyan })
hi("@constant.builtin", { fg = c.cyan, italic = true })
hi("@constant.macro", { fg = c.cyan })
hi("@module", { fg = c.teal })
hi("@label", { fg = c.teal })
hi("@string", { fg = c.green })
hi("@string.documentation", { fg = c.green })
hi("@string.regexp", { fg = c.green_bright })
hi("@string.escape", { fg = c.green_bright })
hi("@string.special", { fg = c.green_bright })
hi("@character", { fg = c.green })
hi("@character.special", { fg = c.green_bright })
hi("@boolean", { fg = c.cyan })
hi("@number", { fg = c.cyan })
hi("@number.float", { fg = c.cyan })
hi("@type", { fg = c.green_dim })
hi("@type.builtin", { fg = c.green_dim, italic = true })
hi("@type.definition", { fg = c.green_dim })
hi("@type.qualifier", { fg = c.teal })
hi("@attribute", { fg = c.teal_light })
hi("@property", { fg = c.fg })
hi("@function", { fg = c.teal_bright })
hi("@function.builtin", { fg = c.teal_bright, italic = true })
hi("@function.call", { fg = c.teal_bright })
hi("@function.macro", { fg = c.teal_light })
hi("@function.method", { fg = c.teal_bright })
hi("@function.method.call", { fg = c.teal_bright })
hi("@constructor", { fg = c.teal_bright })
hi("@operator", { fg = c.fg })
hi("@keyword", { fg = c.teal, italic = true })
hi("@keyword.coroutine", { fg = c.teal, italic = true })
hi("@keyword.function", { fg = c.teal, italic = true })
hi("@keyword.operator", { fg = c.teal })
hi("@keyword.import", { fg = c.teal })
hi("@keyword.storage", { fg = c.teal })
hi("@keyword.repeat", { fg = c.teal })
hi("@keyword.return", { fg = c.teal })
hi("@keyword.debug", { fg = c.warn })
hi("@keyword.exception", { fg = c.teal })
hi("@keyword.conditional", { fg = c.teal })
hi("@keyword.conditional.ternary", { fg = c.teal })
hi("@keyword.directive", { fg = c.teal_light })
hi("@keyword.directive.define", { fg = c.teal_light })
hi("@punctuation.delimiter", { fg = c.fg_dim })
hi("@punctuation.bracket", { fg = c.fg })
hi("@punctuation.special", { fg = c.teal_light })
hi("@comment", { fg = c.comment, italic = true })
hi("@comment.documentation", { fg = c.comment, italic = true })
hi("@comment.error", { fg = c.error, bold = true })
hi("@comment.warning", { fg = c.warn, bold = true })
hi("@comment.todo", { fg = c.bg, bg = c.green, bold = true })
hi("@comment.note", { fg = c.bg, bg = c.info, bold = true })
hi("@markup.strong", { bold = true })
hi("@markup.italic", { italic = true })
hi("@markup.strikethrough", { strikethrough = true })
hi("@markup.underline", { underline = true })
hi("@markup.heading", { fg = c.green, bold = true })
hi("@markup.quote", { fg = c.fg_dim, italic = true })
hi("@markup.math", { fg = c.cyan })
hi("@markup.link", { fg = c.teal_bright, underline = true })
hi("@markup.link.label", { fg = c.cyan })
hi("@markup.link.url", { fg = c.cyan, underline = true })
hi("@markup.raw", { fg = c.green })
hi("@markup.raw.block", { fg = c.fg })
hi("@markup.list", { fg = c.teal })
hi("@markup.list.checked", { fg = c.green })
hi("@markup.list.unchecked", { fg = c.fg_dim })
hi("@diff.plus", { fg = c.green })
hi("@diff.minus", { fg = c.error })
hi("@diff.delta", { fg = c.teal })
hi("@tag", { fg = c.teal })
hi("@tag.attribute", { fg = c.green_dim })
hi("@tag.delimiter", { fg = c.fg_dim })

-- Git
hi("gitcommitSummary", { fg = c.fg })
hi("gitcommitOverflow", { fg = c.error })

-- GitSigns
hi("GitSignsAdd", { fg = c.green })
hi("GitSignsChange", { fg = c.teal })
hi("GitSignsDelete", { fg = c.error })

-- Telescope
hi("TelescopeNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeTitle", { fg = c.green, bold = true })
hi("TelescopePromptNormal", { fg = c.fg, bg = c.bg_lighter })
hi("TelescopePromptBorder", { fg = c.bg_lighter, bg = c.bg_lighter })
hi("TelescopePromptTitle", { fg = c.bg, bg = c.green, bold = true })
hi("TelescopePromptPrefix", { fg = c.green })
hi("TelescopePromptCounter", { fg = c.fg_dim })
hi("TelescopePreviewNormal", { fg = c.fg, bg = c.bg })
hi("TelescopePreviewBorder", { fg = c.bg_lighter, bg = c.bg })
hi("TelescopePreviewTitle", { fg = c.green, bold = true })
hi("TelescopeResultsNormal", { fg = c.fg, bg = c.bg_light })
hi("TelescopeResultsBorder", { fg = c.bg_lighter, bg = c.bg_light })
hi("TelescopeResultsTitle", { fg = c.green, bold = true })
hi("TelescopeSelection", { fg = c.white, bg = c.bg_lighter })
hi("TelescopeSelectionCaret", { fg = c.green, bg = c.bg_lighter })
hi("TelescopeMatching", { fg = c.green_light, bold = true })

-- NvimTree / Neo-tree
hi("NvimTreeNormal", { fg = c.fg, bg = c.bg })
hi("NvimTreeFolderIcon", { fg = c.teal_bright })
hi("NvimTreeFolderName", { fg = c.teal_bright })
hi("NvimTreeOpenedFolderName", { fg = c.teal_bright, bold = true })
hi("NvimTreeRootFolder", { fg = c.green, bold = true })
hi("NvimTreeSpecialFile", { fg = c.green_light })
hi("NvimTreeGitDirty", { fg = c.teal })
hi("NvimTreeGitNew", { fg = c.green })
hi("NvimTreeGitDeleted", { fg = c.error })
hi("NvimTreeIndentMarker", { fg = c.bg_lighter })
hi("NvimTreeCursorLine", { bg = c.selection })
hi("NeoTreeNormal", { fg = c.fg, bg = c.bg })
hi("NeoTreeNormalNC", { fg = c.fg, bg = c.bg })
hi("NeoTreeDirectoryIcon", { fg = c.teal_bright })
hi("NeoTreeDirectoryName", { fg = c.teal_bright })
hi("NeoTreeRootName", { fg = c.green, bold = true })
hi("NeoTreeFileName", { fg = c.fg })
hi("NeoTreeFileIcon", { fg = c.fg })
hi("NeoTreeGitAdded", { fg = c.green })
hi("NeoTreeGitModified", { fg = c.teal })
hi("NeoTreeGitDeleted", { fg = c.error })
hi("NeoTreeGitUntracked", { fg = c.fg_dim })
hi("NeoTreeIndentMarker", { fg = c.bg_lighter })
hi("NeoTreeCursorLine", { bg = c.selection })
hi("NeoTreeFloatBorder", { fg = c.bg_lighter })

-- Which-key
hi("WhichKey", { fg = c.green })
hi("WhichKeyGroup", { fg = c.teal_bright })
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
hi("NoiceCmdlineIcon", { fg = c.green })
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
hi("MiniStatuslineModeNormal", { fg = c.bg, bg = c.green, bold = true })
hi("MiniStatuslineModeInsert", { fg = c.bg, bg = c.teal_bright, bold = true })
hi("MiniStatuslineModeVisual", { fg = c.bg, bg = c.cyan, bold = true })
hi("MiniStatuslineModeReplace", { fg = c.bg, bg = c.error, bold = true })
hi("MiniStatuslineModeCommand", { fg = c.bg, bg = c.green_light, bold = true })
hi("MiniCursorword", { bg = c.bg_lighter })
hi("MiniCursorwordCurrent", { bg = c.bg_lighter })

-- Cmp
hi("CmpItemAbbr", { fg = c.fg })
hi("CmpItemAbbrDeprecated", { fg = c.fg_dim, strikethrough = true })
hi("CmpItemAbbrMatch", { fg = c.green, bold = true })
hi("CmpItemAbbrMatchFuzzy", { fg = c.green })
hi("CmpItemKind", { fg = c.teal_bright })
hi("CmpItemKindClass", { fg = c.green_dim })
hi("CmpItemKindColor", { fg = c.cyan })
hi("CmpItemKindConstant", { fg = c.cyan })
hi("CmpItemKindConstructor", { fg = c.teal_bright })
hi("CmpItemKindEnum", { fg = c.green_dim })
hi("CmpItemKindEnumMember", { fg = c.cyan })
hi("CmpItemKindEvent", { fg = c.teal })
hi("CmpItemKindField", { fg = c.fg })
hi("CmpItemKindFile", { fg = c.fg })
hi("CmpItemKindFolder", { fg = c.teal_bright })
hi("CmpItemKindFunction", { fg = c.teal_bright })
hi("CmpItemKindInterface", { fg = c.green_dim })
hi("CmpItemKindKeyword", { fg = c.teal })
hi("CmpItemKindMethod", { fg = c.teal_bright })
hi("CmpItemKindModule", { fg = c.teal })
hi("CmpItemKindOperator", { fg = c.fg })
hi("CmpItemKindProperty", { fg = c.fg })
hi("CmpItemKindReference", { fg = c.fg })
hi("CmpItemKindSnippet", { fg = c.green })
hi("CmpItemKindStruct", { fg = c.green_dim })
hi("CmpItemKindText", { fg = c.fg })
hi("CmpItemKindTypeParameter", { fg = c.green_dim })
hi("CmpItemKindUnit", { fg = c.cyan })
hi("CmpItemKindValue", { fg = c.cyan })
hi("CmpItemKindVariable", { fg = c.fg })
hi("CmpItemMenu", { fg = c.fg_dim })

-- Lazy
hi("LazyButton", { fg = c.fg, bg = c.bg_light })
hi("LazyButtonActive", { fg = c.bg, bg = c.green, bold = true })
hi("LazyH1", { fg = c.bg, bg = c.green, bold = true })
hi("LazyH2", { fg = c.green, bold = true })
hi("LazyComment", { fg = c.comment })
hi("LazyCommit", { fg = c.cyan })
hi("LazyCommitType", { fg = c.teal })
hi("LazyDimmed", { fg = c.fg_dim })
hi("LazyProp", { fg = c.teal_bright })
hi("LazyReasonPlugin", { fg = c.teal })
hi("LazyReasonCmd", { fg = c.green })
hi("LazyReasonEvent", { fg = c.cyan })
hi("LazyReasonFt", { fg = c.green_dim })
hi("LazyReasonKeys", { fg = c.teal_light })
hi("LazyReasonStart", { fg = c.fg_dim })
hi("LazySpecial", { fg = c.green })
hi("LazyUrl", { fg = c.cyan, underline = true })
hi("LazyValue", { fg = c.green })

-- Mason
hi("MasonNormal", { fg = c.fg, bg = c.bg_light })
hi("MasonHeader", { fg = c.bg, bg = c.green, bold = true })
hi("MasonHeaderSecondary", { fg = c.bg, bg = c.teal_bright, bold = true })
hi("MasonHighlight", { fg = c.green })
hi("MasonHighlightBlock", { fg = c.bg, bg = c.green })
hi("MasonHighlightBlockBold", { fg = c.bg, bg = c.green, bold = true })
hi("MasonHighlightSecondary", { fg = c.teal_bright })
hi("MasonMuted", { fg = c.fg_dim })
hi("MasonMutedBlock", { fg = c.fg_dim, bg = c.bg_light })

-- Flash
hi("FlashLabel", { fg = c.bg, bg = c.green, bold = true })
hi("FlashMatch", { fg = c.fg, bg = c.bg_lighter })
hi("FlashCurrent", { fg = c.white, bg = c.bg_lighter })
hi("FlashBackdrop", { fg = c.fg_dim })

-- Dashboard
hi("DashboardHeader", { fg = c.green })
hi("DashboardFooter", { fg = c.fg_dim })
hi("DashboardDesc", { fg = c.fg })
hi("DashboardKey", { fg = c.green })
hi("DashboardIcon", { fg = c.teal_bright })
hi("DashboardShortCut", { fg = c.teal })

-- Snacks
hi("SnacksPickerNormal", { fg = c.fg, bg = c.bg })
hi("SnacksPickerBorder", { fg = c.bg_lighter, bg = c.bg })
hi("SnacksPickerTitle", { fg = c.green, bold = true })
hi("SnacksPickerSelected", { fg = c.white, bg = c.selection })
hi("SnacksPickerCursorLine", { bg = c.selection })
hi("SnacksPickerMatch", { fg = c.green_light, bold = true })
hi("SnacksPickerPreview", { fg = c.fg, bg = c.bg })
hi("SnacksPickerInput", { fg = c.fg, bg = c.bg_light })

-- Buffer selection (generic)
hi("BufferLineFill", { bg = c.bg_light })
hi("BufferLineBackground", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineBufferSelected", { fg = c.white, bg = c.bg, bold = true })
hi("BufferLineBufferVisible", { fg = c.fg_dim, bg = c.bg_light })
hi("BufferLineSeparator", { fg = c.bg, bg = c.bg_light })
hi("BufferLineSeparatorSelected", { fg = c.bg, bg = c.bg })
hi("BufferLineIndicatorSelected", { fg = c.green, bg = c.bg })

-- Terminal colors
vim.g.terminal_color_0 = c.bg
vim.g.terminal_color_1 = c.teal
vim.g.terminal_color_2 = c.green
vim.g.terminal_color_3 = c.green_light
vim.g.terminal_color_4 = c.teal_bright
vim.g.terminal_color_5 = c.green
vim.g.terminal_color_6 = c.teal_light
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.fg_dimmer
vim.g.terminal_color_9 = c.green_bright
vim.g.terminal_color_10 = c.bg_light
vim.g.terminal_color_11 = c.bg_lighter
vim.g.terminal_color_12 = c.fg_dim
vim.g.terminal_color_13 = c.cyan
vim.g.terminal_color_14 = c.green_dim
vim.g.terminal_color_15 = c.fg_bright
