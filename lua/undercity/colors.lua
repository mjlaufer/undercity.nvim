local hsluv = require('undercity.hsluv').to_hex

return {
    bg1 = hsluv(50, 20, 12), -- #231f1b
    bg2 = hsluv(50, 20, 18), -- #312b26
    bg3 = hsluv(50, 20, 28), -- #49413a

    fg1 = hsluv(50, 30, 82), -- #dec8b5
    fg2 = hsluv(50, 30, 70), -- #c1a78e
    fg3 = hsluv(50, 24, 40), -- #695c51

    red = hsluv(12, 80, 60), -- #ef6e6e
    darkRed = hsluv(12, 60, 46), -- #bd4444
    orange = hsluv(40, 75, 66), -- #d9904f
    darkOrange = hsluv(40, 70, 50), -- #a06b3f
    yellow = hsluv(62, 72, 78), -- #e3bc66
    darkYellow = hsluv(62, 70, 54), -- #987e45
    green = hsluv(128, 40, 78), -- #94cf95
    darkGreen = hsluv(128, 30, 60), -- #779978
    cyan = hsluv(190, 40, 70), -- #88b3b2
    darkCyan = hsluv(190, 30, 58), -- #779090
    blue = hsluv(254, 50, 70), -- #9aabd6
    darkBlue = hsluv(254, 36, 54), -- #6f81ab
    magenta = hsluv(310, 50, 70), -- #d696d3
    darkMagenta = hsluv(310, 36, 54), -- #a66ea3

    diffRed = hsluv(12, 40, 15), -- #3f1b1b
    diffGreen = hsluv(128, 30, 20), -- #263427
    diffBlue = hsluv(254, 30, 20), -- #2a3040
}
