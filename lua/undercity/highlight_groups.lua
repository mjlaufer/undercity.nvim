local hsluv = require('undercity.hsluv').to_hex
local c = require('undercity.colors')

local bold = 'bold'
local italic = 'italic'
local underline = 'underline'
local undercurl = 'undercurl'

return {
    ---- :help highlight-default -------------------------------
    ColorColumn = {bg = c.bg2},
    -- Cursor = {},
    -- lCursor = {},
    -- CursorIM = {},
    -- CursorColumn = {},
    CursorLine = {bg = c.bg1},
    Normal = {fg = c.fg1, bg = c.bg1}, -- Normal text
    NormalFloat = {bg = c.bg2}, -- Normal text in floating windows
    -- NormalNC = {},
    -- TermCursor = {},
    -- TermCursorNC = {},
    VertSplit = {fg = c.bg3},
    LineNr = {fg = c.bg3},
    CursorLineNr = {fg = c.orange},
    Folded = {fg = c.darkGreen, bg = c.bg2},
    FoldColumn = {fg = c.bg3},
    SignColumn = {fg = c.bg3},
    Pmenu = {bg = c.bg2},
    PmenuSel = {bg = c.bg3},
    PmenuSbar = {bg = c.bg2},
    PmenuThumb = {bg = c.bg3},
    StatusLine = {bg = c.bg2},
    StatusLineNC = {bg = c.bg2, fg = c.fg2},
    WildMenu = {bg = c.bg2},
    TabLine = {bg = c.bg2, fg = c.fg2},
    TabLineFill = {bg = c.bg2},
    TabLineSel = {bg = c.bg2},
    MatchParen = {fg = c.yellow, bg = c.bg3},
    Substitute = {fg = c.bg1, bg = c.yellow},
    Search = {bg = c.bg3},
    IncSearch = {bg = c.bg3},
    Visual = {bg = c.bg3},
    -- VisualNOS = {},
    Conceal = {fg = c.fg2},
    Whitespace = {fg = c.bg3},
    EndOfBuffer = {fg = c.bg3},
    NonText = {fg = c.bg3},
    SpecialKey = {fg = c.bg3},
    Directory = {fg = c.cyan},
    Title = {fg = c.orange},
    ErrorMsg = {bg = c.red},
    ModeMsg = {fg = c.fg2},
    -- MsgArea = {},
    -- MsgSeparator = {},
    MoreMsg = {fg = c.green},
    WarningMsg = {fg = c.red},
    Question = {fg = c.green},

    ---- :help :diff -------------------------------------------
    DiffAdd = {bg = hsluv(130, 50, 20)}, -- green
    DiffChange = {bg = hsluv(255, 50, 20)}, -- blue
    DiffDelete = {bg = hsluv(355, 50, 20)}, -- red
    DiffText = {bg = hsluv(255, 50, 30)},
    DiffAdded = {bg = hsluv(130, 50, 20)},
    DiffRemoved = {bg = hsluv(355, 50, 20)},

    ---- :help spell -------------------------------------------
    SpellBad = {sp = c.red, style = undercurl},
    SpellCap = {sp = c.blue, style = undercurl},
    SpellLocal = {sp = c.orange, style = undercurl},
    SpellRare = {sp = c.yellow, style = undercurl},

    ---- :help group-name --------------------------------------
    Comment = {fg = c.darkGreen},
    Identifier = {fg = c.fg1}, -- (preferred) any variable name
    Function = {fg = c.yellow},
    Constant = {fg = c.magenta},
    String = {fg = c.cyan},
    Character = {fg = c.cyan},
    Number = {fg = c.magenta},
    Boolean = {fg = c.magenta},
    Float = {fg = c.magenta},
    Statement = {fg = c.orange}, -- (preferred) any statement
    Conditional = {fg = c.orange}, -- if, then, else, etc.
    Repeat = {fg = c.orange}, -- for, do, while, etc.
    -- Label = {fg = c.orange}, -- case, default, etc.
    Operator = {fg = c.red},
    -- Keyword = {}, -- any other keyword
    Exception = {fg = c.orange}, -- try, catch, throw

    PreProc = {fg = c.green}, -- (preferred) generic Preprocessor
    -- Include = {},
    -- Define = {},
    -- Macro = {},
    -- PreCondit = {},

    Type = {fg = c.darkBlue},
    -- StorageClass = {},
    -- Structure = {},
    -- Typedef = {},

    Special = {fg = c.yellow},
    -- SpecialChar = {};
    -- Tag = {};
    Delimiter = {fg = c.darkYellow},
    -- Specialcomment = {};
    -- Debug = {};
    Underlined = {style = underline},
    Bold = {style = bold},
    Italic = {style = italic},
    Ignore = {fg = c.darkGreen},
    Error = {bg = c.darkRed},
    Todo = {fg = c.fg2},

    ---- :help nvim-treesitter-highlights (external plugin) ----
    -- TSAttribute = {},
    -- TSBoolean = {},
    -- TSCharacter = {},
    -- TSComment = {},
    -- TSConditional = {},
    -- TSConstant = {},
    TSConstBuiltin = {fg = c.magenta},
    TSConstMacro = {fg = c.magenta},
    -- TSConstructor = {},
    -- TSError = {style = undercurl}'
    -- TSException = {},
    -- TSFloat = {},
    -- TSFunction = {},
    TSFuncBuiltin = {fg = c.yellow},
    TSFuncMacro = {fg = c.yellow},
    -- TSInclude = {},
    -- TSKeyword = {},
    TSKeywordFunction = {fg = c.green},
    -- TSKeywordOperator = {},
    TSKeywordReturn = {fg = c.green},
    -- TSLabel = {},
    -- TSMethod = {},
    TSNamespace = {fg = c.green},
    -- TSNone = {},
    -- TSNumber = {},
    TSOperator = {fg = c.red},
    TSParameter = {fg = c.blue},
    TSParameterReference = {fg = c.blue},
    -- TSProperty = {},
    TSPunctDelimiter = {fg = c.red},
    TSPunctBracket = {fg = c.darkYellow},
    TSPunctSpecial = {fg = c.darkYellow},
    -- TSRepeat = {},
    -- TSString = {},
    TSStringRegex = {fg = c.darkCyan},
    TSStringEscape = {fg = c.darkCyan},
    TSSymbol = {fg = c.fg1},
    -- TSType = {},
    -- TSTypeBuiltin = {},
    TSVariable = {fg = c.fg1},
    TSVariableBuiltin = {fg = c.fg1},
    TSTag = {fg = c.orange},
    TSTagAttribute = {fg = c.green},
    -- TSTagDelimiter = {},
    -- TSText = {},
    TSStrong = {style = bold},
    TSEmphasis = {style = italic},
    TSUnderline = {style = underline},
    TSStrike = {style = 'strikethrough'},
    -- TSTitle = {},
    -- TSLiteral = {},
    TSURI = {fg = c.blue, style = underline},
    TSMath = {fg = c.orange},
    -- TSTextReference = {},
    TSEnvironment = {fg = c.orange},
    TSEnvironmentName = {fg = c.green},
    -- TSNote = {},
    -- TSWarning = {},
    -- TSDanger = {},

    ---- :help diagnostic-highlight ----------------------------
    DiagnosticError = {fg = c.red},
    DiagnosticWarn = {fg = c.yellow},
    DiagnosticInfo = {fg = c.blue},
    DiagnosticHint = {fg = c.cyan},

    -- DiagnosticVirtualTextError = {fg = c.red},
    -- DiagnosticVirtualTextWarn = {fg = c.yellow},
    -- DiagnosticVirtualTextInfo = {fg = c.blue},
    -- DiagnosticVirtualTextHint = {fg = c.cyan},

    DiagnosticUnderlineError = {style = undercurl, sp = c.red},
    DiagnosticUnderlineWarn = {style = undercurl, sp = c.yellow},
    DiagnosticUnderlineInfo = {style = undercurl, sp = c.blue},
    DiagnosticUnderlineHint = {style = undercurl, sp = c.cyan},

    -- DiagnosticFloatingError = {fg = c.red},
    -- DiagnosticFloatingWarn = {fg = c.yellow},
    -- DiagnosticFloatingInfo = {fg = c.blue},
    -- DiagnosticFloatingHint = {fg = c.cyan},

    -- DiagnosticSignError = {fg = c.red},
    -- DiagnosticSignWarn = {fg = c.yellow},
    -- DiagnosticSignInfo = {fg = c.blue},
    -- DiagnosticSignHint = {fg = c.cyan},

    ---- :help lsp-highlight -----------------------------------
    LspReferenceText = {bg = c.bg3},
    LspReferenceRead = {bg = c.bg3},
    LspReferenceWrite = {bg = c.bg3},

    LspDiagnosticsDefaultError = {fg = c.red},
    LspDiagnosticsDefaultWarning = {fg = c.yellow},
    LspDiagnosticsDefaultInformation = {fg = c.blue},
    LspDiagnosticsDefaultHint = {fg = c.cyan},

    -- LspDiagnosticsVirtualTextError = {},
    -- LspDiagnosticsVirtualTextWarning = {},
    -- LspDiagnosticsVirtualTextInformation = {},
    -- LspDiagnosticsVirtualTextHint = {},

    LspDiagnosticsUnderlineError = {style = undercurl},
    LspDiagnosticsUnderlineWarning = {style = undercurl},
    LspDiagnosticsUnderlineInformation = {style = undercurl},
    LspDiagnosticsUnderlineHint = {style = undercurl},

    -- LspDiagnosticsFloatingError = {},
    -- LspDiagnosticsFloatingWarning = {},
    -- LspDiagnosticsFloatingInformation = {},
    -- LspDiagnosticsFloatingHint = {},

    -- LspDiagnosticsSignError = {},
    -- LspDiagnosticsSignWarning = {},
    -- LspDiagnosticsSignInformation = {},
    -- LspDiagnosticsSignHint = {},

    ---- :h telescope (external plugin) ------------------------
    TelescopeBorder = {fg = c.bg3, bg = c.bg1},
    TelescopeNormal = {bg = c.bg1},
    TelescopePromptBorder = {fg = c.bg3, bg = c.bg1},
    TelescopePromptNormal = {fg = c.fg1},
    TelescopePromptPrefix = {fg = c.fg1},
    TelescopePromptCounter = {fg = c.fg2},
    TelescopePromptTitle = {fg = c.fg2},
    TelescopePreviewBorder = {fg = c.bg3, bg = c.bg1},
    TelescopePreviewNormal = {bg = c.bg1},
    TelescopePreviewTitle = {fg = c.fg2},
    TelescopeResultsTitle = {fg = c.fg2},
    TelescopeSelection = {bg = c.bg3},

    ---- :h gitsigns (external plugin) -------------------------
    GitSignsAdd = {fg = c.darkGreen},
    GitSignsChange = {fg = c.darkBlue},
    GitSignsDelete = {fg = c.darkRed},
    GitSignsCurrentLineBlame = {fg = '#595959'}, -- dark gray

    ---- :h nvim-tree (external plugin) ------------------------
    NvimTreeRootFolder = {fg = c.orange},
    NvimTreeOpenedFile = {fg = c.yellow},
    NvimTreeWindowPicker = {fg = c.bg1, bg = c.orange},
}
