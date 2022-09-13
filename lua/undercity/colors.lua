local hsluv = require('undercity.hsluv').to_hex

return {
    bg1 = hsluv(50, 20, 12), -- #231f1b
    bg2 = hsluv(50, 20, 17), -- #2e2924
    bg3 = hsluv(50, 20, 25), -- #413a34

    fg1 = hsluv(50, 20, 82), -- #d8c9bd
    fg2 = hsluv(50, 20, 70), -- #baa898
    fg3 = hsluv(50, 20, 46), -- #776b60

    red = hsluv(12, 80, 60), -- #ef6e6e
    darkRed = hsluv(12, 60, 46), -- #bd4444
    orange = hsluv(40, 75, 68), -- #e09552
    darkOrange = hsluv(40, 70, 52), -- #a77042
    yellow = hsluv(62, 72, 78), -- #e3bc66
    darkYellow = hsluv(62, 70, 54), -- #987e45
    green = hsluv(128, 40, 78), -- #94cf95
    darkGreen = hsluv(128, 30, 60), -- #779978
    cyan = hsluv(190, 40, 72), -- #8db9b8
    darkCyan = hsluv(190, 30, 58), -- #779090
    blue = hsluv(254, 50, 70), -- #9aabd6
    darkBlue = hsluv(254, 36, 54), -- #6f81ab
    magenta = hsluv(310, 50, 70), -- #d696d3
    darkMagenta = hsluv(310, 36, 54), -- #a66ea3

    diffRed = hsluv(12, 40, 15), -- #3f1b1b
    diffGreen = hsluv(128, 30, 20), -- #263427
    diffBlue = hsluv(254, 30, 20), -- #2a3040
}
