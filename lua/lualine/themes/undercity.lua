local t = require('undercity.colors')

return {
    normal = {
        a = {bg = t.orange, fg = t.bg1, gui = 'bold'},
        b = {bg = t.bg1, fg = t.orange},
        c = {bg = t.bg2, fg = t.fg2},
    },
    insert = {a = {bg = t.yellow, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.yellow}},
    command = {a = {bg = t.green, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.green}},
    visual = {a = {bg = t.blue, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.blue}},
    replace = {a = {bg = t.magenta, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.magenta}},
    inactive = {
        a = {bg = t.bg2, fg = t.red, gui = 'bold'},
        b = {bg = t.bg1, fg = t.red},
        c = {bg = t.bg2, fg = t.fg2},
    },
}
