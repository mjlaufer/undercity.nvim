local t = require('undercity.colors')

return {
    normal = {
        a = {bg = t.orange, fg = t.bg1, gui = 'bold'},
        b = {bg = t.bg1, fg = t.orange},
        c = {bg = t.bg2, fg = t.fg2},
    },
    insert = {a = {bg = t.yellow, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.yellow}},
    visual = {a = {bg = t.blue, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.blue}},
    replace = {a = {bg = t.magenta, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.magenta}},
    command = {a = {bg = t.cyan, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.cyan}},
    terminal = {a = {bg = t.green, fg = t.bg1, gui = 'bold'}, b = {bg = t.bg1, fg = t.green}},
    inactive = {
        a = {bg = t.bg2, fg = t.red, gui = 'bold'},
        b = {bg = t.bg1, fg = t.red},
        c = {bg = t.bg2, fg = t.fg2},
    },
}
