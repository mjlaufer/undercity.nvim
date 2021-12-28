local lush = require('lush')
local hsluv = lush.hsluv

local t = {
    bg1 = hsluv(50, 20, 12),
    bg2 = hsluv(50, 20, 20),
    bg3 = hsluv(50, 20, 30),
    fg1 = hsluv(50, 30, 85),
    fg2 = hsluv(50, 30, 70),
    red = hsluv(355, 50, 55),
    orange = hsluv(40, 75, 65),
    yellow = hsluv(62, 70, 80),
    green = hsluv(130, 40, 80),
    cyan = hsluv(190, 40, 70),
    blue = hsluv(255, 40, 70),
    magenta = hsluv(310, 50, 70),
    darkRed = hsluv(355, 60, 30),
    darkYellow = hsluv(62, 70, 50),
    darkGreen = hsluv(130, 30, 50),
    darkCyan = hsluv(190, 30, 50),
    darkBlue = hsluv(255, 30, 50),
}

-- Font variants: This only works when loading this file directly, not when loading with `:colorscheme`
local bold, italic, underline, undercurl;
if vim.g.melange_enable_font_variants ~= 0 then
    bold = 'bold'
    italic = 'italic'
    underline = 'underline'
    undercurl = 'undercurl'
end

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
        Pmenu {NormalFloat},
        PmenuSel {bg = t.bg2},
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
        Search {fg = t.bg1, bg = t.yellow},
        IncSearch {fg = t.bg1, bg = t.yellow},
        Visual {bg = t.bg2},
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
        DiffChange {bg = hsluv(190, 50, 20)}, -- cyan
        DiffDelete {bg = hsluv(255, 50, 20)}, -- red
        DiffText {bg = hsluv(62, 50, 20)}, -- yellow
        DiffAdded {DiffAdd},
        DiffRemoved {DiffDelete},

        ---- :help spell -------------------------------------------
        SpellBad {fg = t.red, gui = undercurl},
        SpellCap {fg = t.blue, gui = undercurl},
        SpellLocal {fg = t.orange, gui = undercurl},
        SpellRare {fg = t.yellow, gui = undercurl},

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

        DiagnosticUnderlineError {gui = undercurl},
        DiagnosticUnderlineWarn {gui = undercurl},
        DiagnosticUnderlineInfo {gui = undercurl},
        DiagnosticUnderlineHint {gui = undercurl},

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
        GitSignsAdd {fg = t.bg1, bg = t.darkGreen, gui = 'reverse'},
        GitSignsChange {fg = t.bg1, bg = t.darkCyan, gui = 'reverse'},
        GitSignsDelete {fg = t.bg1, bg = t.darkRed, gui = 'reverse'},
        GitSignsCurrentLineBlame {fg = t.bg1, bg = t.darkBlue, gui = 'reverse'},
        SignifySignAdd {GitSignsAdd},
        SignifySignChange {GitSignsChange},
        SignifySignDelete {GitSignsDelete},

        ---- :h nvim-tree (external plugin) ------------------------
        NvimTreeRootFolder {fg = t.orange},
        NvimTreeOpenedFile {fg = t.yellow},
    }
end)

-- vi:nowrap
