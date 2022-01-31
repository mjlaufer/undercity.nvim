local lush = require('lush')
local hsluv = require('undercity.hsluv').to_hex
local t = require('undercity.colors')

local bold = 'bold'
local italic = 'italic'
local underline = 'underline'
local undercurl = 'undercurl'

---@diagnostic disable: undefined-global
return lush(function()
    return {
        ---- :help highlight-default -------------------------------
        ColorColumn {bg = t.bg2},
        -- Cursor {},
        -- lCursor {},
        -- CursorIM {},
        -- CursorColumn {ColorColumn},
        CursorLine {bg = t.bg1},
        Normal {fg = t.fg1, bg = t.bg1}, -- Normal text
        NormalFloat {bg = t.bg2}, -- Normal text in floating windows
        -- NormalNC {},
        -- TermCursor {},
        -- TermCursorNC {},
        VertSplit {fg = t.bg3},
        LineNr {fg = t.bg3},
        CursorLineNr {fg = t.orange},
        Folded {fg = t.darkGreen, bg = t.bg2},
        FoldColumn {LineNr},
        SignColumn {LineNr},
        Pmenu {bg = t.bg2},
        PmenuSel {bg = t.bg3},
        PmenuSbar {Pmenu},
        PmenuThumb {PmenuSel},
        StatusLine {NormalFloat},
        StatusLineNC {StatusLine, fg = t.fg2},
        WildMenu {NormalFloat},
        TabLine {StatusLineNC},
        TabLineFill {StatusLine},
        TabLineSel {StatusLine},
        MatchParen {fg = t.yellow, bg = t.bg3},
        Substitute {fg = t.bg1, bg = t.yellow},
        Search {bg = t.bg3},
        IncSearch {Search},
        Visual {bg = t.bg3},
        -- VisualNOS {},
        Conceal {fg = t.fg2},
        Whitespace {fg = t.bg3},
        EndOfBuffer {Whitespace},
        NonText {Whitespace},
        SpecialKey {Whitespace},
        Directory {fg = t.cyan},
        Title {fg = t.orange},
        ErrorMsg {bg = t.red},
        ModeMsg {fg = t.fg2},
        -- MsgArea {},
        -- MsgSeparator {},
        MoreMsg {fg = t.green},
        WarningMsg {fg = t.red},
        Question {MoreMsg},

        ---- :help :diff -------------------------------------------
        DiffAdd {bg = hsluv(130, 50, 20)}, -- green
        DiffChange {bg = hsluv(255, 50, 20)}, -- blue
        DiffDelete {bg = hsluv(355, 50, 20)}, -- red
        DiffText {bg = hsluv(255, 50, 30)},
        DiffAdded {DiffAdd},
        DiffRemoved {DiffDelete},

        ---- :help spell -------------------------------------------
        SpellBad {sp = t.red, gui = undercurl},
        SpellCap {sp = t.blue, gui = undercurl},
        SpellLocal {sp = t.orange, gui = undercurl},
        SpellRare {sp = t.yellow, gui = undercurl},

        ---- :help group-name --------------------------------------
        Comment {fg = t.darkGreen},
        Identifier {fg = t.fg1}, -- (preferred) any variable name
        Function {fg = t.yellow},
        Constant {fg = t.magenta},
        String {fg = t.cyan},
        Character {fg = t.cyan},
        Number {fg = t.magenta},
        Boolean {fg = t.magenta},
        Float {fg = t.magenta},
        Statement {fg = t.orange}, -- (preferred) any statement
        Conditional {fg = t.orange}, -- if, then, else, etc.
        Repeat {fg = t.orange}, -- for, do, while, etc.
        -- Label {fg = t.orange}, -- case, default, etc.
        Operator {fg = t.red},
        -- Keyword {}, -- any other keyword
        Exception {fg = t.orange}, -- try, catch, throw

        PreProc {fg = t.green}, -- (preferred) generic Preprocessor
        -- Include {},
        -- Define {},
        -- Macro {},
        -- PreCondit {},

        Type {fg = t.darkBlue},
        -- StorageClass {},
        -- Structure {},
        -- Typedef {},

        Special {fg = t.yellow},
        -- SpecialChar {};
        -- Tag {};
        Delimiter {fg = t.darkYellow},
        -- Specialcomment {};
        -- Debug {};
        Underlined {gui = underline},
        Bold {gui = bold},
        Italic {gui = italic},
        Ignore {fg = t.darkGreen},
        Error {bg = t.darkRed},
        Todo {Comment, fg = t.fg2},

        ---- :help nvim-treesitter-highlights (external plugin) ----
        -- TSAttribute {},
        -- TSBoolean {},
        -- TSCharacter {},
        -- TSComment {},
        -- TSConditional {},
        -- TSConstant {},
        TSConstBuiltin {Constant},
        TSConstMacro {Constant},
        -- TSConstructor {},
        -- TSError {gui = undercurl}'
        -- TSException {},
        -- TSFloat {},
        -- TSFunction {},
        TSFuncBuiltin {Function},
        TSFuncMacro {Function},
        -- TSInclude {},
        -- TSKeyword {},
        TSKeywordFunction {fg = t.green},
        -- TSKeywordOperator {},
        TSKeywordReturn {fg = t.green},
        -- TSLabel {},
        -- TSMethod {},
        TSNamespace {fg = t.green},
        -- TSNone {},
        -- TSNumber {},
        TSOperator {Operator},
        TSParameter {fg = t.blue},
        TSParameterReference {TSParameter},
        -- TSProperty {},
        TSPunctDelimiter {fg = t.red},
        TSPunctBracket {Delimiter},
        TSPunctSpecial {Delimiter},
        -- TSRepeat {},
        -- TSString {},
        TSStringRegex {fg = t.darkCyan},
        TSStringEscape {fg = t.darkCyan},
        TSSymbol {Identifier},
        -- TSType {},
        -- TSTypeBuiltin {},
        TSVariable {Identifier},
        TSVariableBuiltin {Identifier},
        TSTag {fg = t.orange},
        TSTagAttribute {fg = t.green},
        -- TSTagDelimiter {},
        -- TSText {},
        TSStrong {gui = bold},
        TSEmphasis {Italic},
        TSUnderline {Underlined},
        TSStrike {gui = 'strikethrough'},
        -- TSTitle {},
        -- TSLiteral {},
        TSURI {fg = t.blue, gui = underline},
        TSMath {fg = t.orange},
        -- TSTextReference {},
        TSEnvironment {Statement},
        TSEnvironmentName {PreProc},
        -- TSNote {},
        -- TSWarning {},
        -- TSDanger {},

        ---- :help diagnostic-highlight ----------------------------
        DiagnosticError {fg = t.red},
        DiagnosticWarn {fg = t.yellow},
        DiagnosticInfo {fg = t.blue},
        DiagnosticHint {fg = t.cyan},

        -- DiagnosticVirtualTextError {DiagnosticError},
        -- DiagnosticVirtualTextWarn {DiagnosticWarn},
        -- DiagnosticVirtualTextInfo {DiagnosticInfo},
        -- DiagnosticVirtualTextHint {DiagnosticHint},

        DiagnosticUnderlineError {gui = undercurl, sp = t.red},
        DiagnosticUnderlineWarn {gui = undercurl, sp = t.yellow},
        DiagnosticUnderlineInfo {gui = undercurl, sp = t.blue},
        DiagnosticUnderlineHint {gui = undercurl, sp = t.cyan},

        -- DiagnosticFloatingError {DiagnosticError},
        -- DiagnosticFloatingWarn {DiagnosticWarn},
        -- DiagnosticFloatingInfo {DiagnosticInfo},
        -- DiagnosticFloatingHint {DiagnosticHint},

        -- DiagnosticSignError {DiagnosticError},
        -- DiagnosticSignWarn {DiagnosticWarn},
        -- DiagnosticSignInfo {DiagnosticInfo},
        -- DiagnosticSignHint {DiagnosticHint},

        ---- :help lsp-highlight -----------------------------------
        LspReferenceText {Visual},
        LspReferenceRead {Visual},
        LspReferenceWrite {Visual},

        LspDiagnosticsDefaultError {DiagnosticError},
        LspDiagnosticsDefaultWarning {DiagnosticWarn},
        LspDiagnosticsDefaultInformation {DiagnosticInfo},
        LspDiagnosticsDefaultHint {DiagnosticHint},

        -- LspDiagnosticsVirtualTextError {},
        -- LspDiagnosticsVirtualTextWarning {},
        -- LspDiagnosticsVirtualTextInformation {},
        -- LspDiagnosticsVirtualTextHint {},

        LspDiagnosticsUnderlineError {gui = undercurl},
        LspDiagnosticsUnderlineWarning {gui = undercurl},
        LspDiagnosticsUnderlineInformation {gui = undercurl},
        LspDiagnosticsUnderlineHint {gui = undercurl},

        -- LspDiagnosticsFloatingError {},
        -- LspDiagnosticsFloatingWarning {},
        -- LspDiagnosticsFloatingInformation {},
        -- LspDiagnosticsFloatingHint {},

        -- LspDiagnosticsSignError {},
        -- LspDiagnosticsSignWarning {},
        -- LspDiagnosticsSignInformation {},
        -- LspDiagnosticsSignHint {},

        ---- :h gitsigns (external plugin) -------------------------
        GitSignsAdd {fg = t.darkGreen},
        GitSignsChange {fg = t.darkBlue},
        GitSignsDelete {fg = t.darkRed},
        GitSignsCurrentLineBlame {fg = '#595959'}, -- dark gray

        ---- :h nvim-tree (external plugin) ------------------------
        NvimTreeRootFolder {fg = t.orange},
        NvimTreeOpenedFile {fg = t.yellow},
        NvimTreeWindowPicker {fg = t.bg1, bg = t.orange},
    }
end)

-- vi:nowrap
