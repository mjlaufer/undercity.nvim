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
    blue = hsluv(255, 40, 70), -- #9fabce
    darkBlue = hsluv(255, 30, 54), -- #7381a6
    magenta = hsluv(310, 40, 70), -- #cd9bcb
    darkMagenta = hsluv(310, 30, 54), -- #a0729e
}
