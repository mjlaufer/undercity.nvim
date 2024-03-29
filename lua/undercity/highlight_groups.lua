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
    FloatBorder = {fg = c.darkYellow, bg = c.bg1},
    -- NormalNC = {},
    -- TermCursor = {},
    -- TermCursorNC = {},
    VertSplit = {fg = c.bg3},
    LineNr = {fg = c.fg3},
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
    ErrorMsg = {bg = c.darkRed},
    ModeMsg = {fg = c.fg2},
    -- MsgArea = {},
    -- MsgSeparator = {},
    MoreMsg = {fg = c.green},
    WarningMsg = {fg = c.darkRed},
    Question = {fg = c.green},

    ---- :help :diff -------------------------------------------
    DiffAdd = {bg = c.diffGreen},
    DiffChange = {bg = c.diffBlue},
    DiffDelete = {bg = c.diffRed},
    DiffText = {bg = c.diffBlue},
    DiffAdded = {bg = c.diffGreen},
    DiffRemoved = {bg = c.diffRed},

    ---- :help spell -------------------------------------------
    SpellBad = {sp = c.darkRed, style = undercurl},
    SpellCap = {sp = c.blue, style = undercurl},
    SpellLocal = {sp = c.orange, style = undercurl},
    SpellRare = {sp = c.yellow, style = undercurl},

    ---- :help group-name --------------------------------------
    Comment = {fg = c.darkGreen},
    Identifier = {fg = c.fg1}, -- (preferred) any variable name
    Function = {fg = c.yellow},
    Constant = {fg = c.blue},
    String = {fg = c.green},
    Character = {fg = c.green},
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
    Include = {fg = c.orange}, -- import...from
    -- Define = {},
    -- Macro = {},
    -- PreCondit = {},

    Type = {fg = c.darkCyan},
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
    TSConstMacro = {fg = c.blue},
    -- TSConstructor = {},
    -- TSError = {style = undercurl}'
    -- TSException = {},
    -- TSFloat = {},
    -- TSFunction = {},
    TSFuncBuiltin = {fg = c.yellow},
    TSFuncMacro = {fg = c.yellow},
    -- TSInclude = {},
    -- TSKeyword = {},
    -- TSKeywordFunction = {},
    -- TSKeywordOperator = {},
    -- TSKeywordReturn = {},
    -- TSLabel = {},
    -- TSMethod = {},
    TSNamespace = {fg = c.fg1},
    -- TSNone = {},
    -- TSNumber = {},
    TSOperator = {fg = c.red},
    TSParameter = {fg = c.cyan},
    TSParameterReference = {fg = c.cyan},
    -- TSProperty = {},
    TSPunctDelimiter = {fg = c.darkRed},
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
    TSVariableBuiltin = {fg = c.blue},
    TSTag = {fg = c.orange},
    TSTagAttribute = {fg = c.blue},
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
    DiagnosticError = {fg = c.darkRed},
    DiagnosticWarn = {fg = c.darkYellow},
    DiagnosticInfo = {fg = c.darkBlue},
    DiagnosticHint = {fg = c.darkCyan},

    -- DiagnosticVirtualTextError = {},
    -- DiagnosticVirtualTextWarn = {},
    -- DiagnosticVirtualTextInfo = {},
    -- DiagnosticVirtualTextHint = {},

    DiagnosticUnderlineError = {style = undercurl, sp = c.darkRed},
    DiagnosticUnderlineWarn = {style = undercurl, sp = c.darkYellow},
    DiagnosticUnderlineInfo = {style = undercurl, sp = c.darkBlue},
    DiagnosticUnderlineHint = {style = undercurl, sp = c.darkCyan},

    -- DiagnosticFloatingError = {},
    -- DiagnosticFloatingWarn = {},
    -- DiagnosticFloatingInfo = {},
    -- DiagnosticFloatingHint = {},

    -- DiagnosticSignError = {},
    -- DiagnosticSignWarn = {},
    -- DiagnosticSignInfo = {},
    -- DiagnosticSignHint = {},

    ---- :help lsp-highlight -----------------------------------
    LspReferenceText = {bg = c.bg3},
    LspReferenceRead = {bg = c.bg3},
    LspReferenceWrite = {bg = c.bg3},

    LspDiagnosticsDefaultError = {fg = c.darkRed},
    LspDiagnosticsDefaultWarning = {fg = c.darkYellow},
    LspDiagnosticsDefaultInformation = {fg = c.darkBlue},
    LspDiagnosticsDefaultHint = {fg = c.darkCyan},

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
    TelescopeResultsTitle = {fg = c.bg1, bg = c.blue},
    TelescopeBorder = {fg = c.darkBlue, bg = c.bg1},
    TelescopeNormal = {bg = c.bg1},
    TelescopePromptTitle = {fg = c.bg1, bg = c.cyan},
    TelescopePromptBorder = {fg = c.darkCyan, bg = c.bg1},
    TelescopePromptCounter = {fg = c.darkCyan},
    TelescopePromptNormal = {fg = c.fg1},
    TelescopePromptPrefix = {fg = c.fg1},
    TelescopePreviewTitle = {fg = c.bg1, bg = c.magenta},
    TelescopePreviewBorder = {fg = c.darkMagenta, bg = c.bg1},
    TelescopePreviewNormal = {bg = c.bg1},
    TelescopeSelection = {bg = c.bg3},

    ---- :h gitsigns (external plugin) -------------------------
    GitSignsAdd = {fg = c.darkGreen},
    GitSignsChange = {fg = c.darkBlue},
    GitSignsDelete = {fg = c.darkRed},
    GitSignsCurrentLineBlame = {fg = c.fg3},

    ---- :h nvim-tree (external plugin) ------------------------
    NvimTreeRootFolder = {fg = c.orange},
    NvimTreeFolderName = {fg = c.blue},
    NvimTreeOpenedFolderName = {fg = c.green},
    NvimTreeExecFile = {fg = c.yellow},
    NvimTreeSpecialFile = {fg = c.magenta},
    NvimTreeGitDirty = {fg = c.darkRed},
    NvimTreeGitStaged = {fg = c.green},
    NvimTreeWindowPicker = {fg = c.bg1, bg = c.orange},

    ---- :h nvim-cmp (external plugin) -------------------------
    CmpItemAbbrMatch = {fg = c.green},
    CmpItemAbbrMatchFuzzy = {fg = c.green},
    CmpItemKindMenu = {fg = c.darkGreen},
    CmpItemKindText = {fg = c.fg2},
    CmpItemKindKeyword = {fg = c.orange},
    CmpItemKindVariable = {fg = c.fg1},
    CmpItemKindValue = {fg = c.magenta},
    CmpItemKindConstant = {fg = c.blue},
    CmpItemKindOperator = {fg = c.red},
    CmpItemKindFunction = {fg = c.yellow},
    CmpItemKindMethod = {fg = c.yellow},
    CmpItemKindReference = {fg = c.blue},
    CmpItemKindClass = {fg = c.darkCyan},
    CmpItemKindInterface = {fg = c.darkCyan},
    CmpItemKindStruct = {fg = c.darkCyan},
    CmpItemKindFolder = {fg = c.blue},
    CmpItemKindFile = {fg = c.fg1},

    ---- neotest (external plugin) -----------------------------
    NeotestAdapterName = {fg = c.orange},
    NeotestDir = {fg = c.blue},
    NeotestRunning = {fg = c.darkYellow},
    NeotestPassed = {fg = c.green},
    NeotestFailed = {fg = c.red},
    NeotestSkipped = {fg = c.yellow},
    NeotestTest = {fg = c.fg1},
    NeotestFile = {fg = c.fg1},
    NeotestNamespace = {fg = c.magenta},
    NeotestFocused = {fg = c.yellow},
    NeotestIndent = {fg = c.fg3},
    NeotestMarked = {fg = c.darkBlue},
    NeotestWinSelect = {fg = c.cyan},
    NeotestTarget = {fg = c.red},
    NeotestUnknown = {fg = c.fg2},
    NeotestExpandMarker = {fg = c.fg3},

    ---- nvim-dap-ui (external plugin) -------------------------
    DapUIScope = {fg = c.cyan},
    DapUIType = {fg = c.magenta},
    DapUIModifiedValue = {fg = c.cyan, style = bold},
    DapUIDecoration = {fg = c.cyan},
    DapUIThread = {fg = c.green},
    DapUIStoppedThread = {fg = c.cyan},
    DapUISource = {fg = c.magenta},
    DapUILineNumber = {fg = c.orange},
    DapUIFloatBorder = {fg = c.bg3},
    DapUIWatchesEmpty = {fg = c.red},
    DapUIWatchesValue = {fg = c.green},
    DapUIWatchesError = {fg = c.red},
    DapUIBreakpointsPath = {fg = c.cyan},
    DapUIBreakpointsInfo = {fg = c.blue},
    DapUIBreakpointsCurrentLine = {fg = c.yellow, style = bold},

    ---- :h sneak (external plugin) ----------------------------
    Sneak = {fg = c.bg1, bg = c.magenta},
    SneakScope = {bg = c.bg3},
}
