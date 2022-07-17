local c = require('undercity.colors')

return {
    normal = {
        a = {bg = c.orange, fg = c.bg1, gui = 'bold'},
        b = {bg = c.bg1, fg = c.orange},
        c = {bg = c.bg2, fg = c.fg2},
    },
    insert = {a = {bg = c.yellow, fg = c.bg1, gui = 'bold'}, b = {bg = c.bg1, fg = c.yellow}},
    visual = {a = {bg = c.blue, fg = c.bg1, gui = 'bold'}, b = {bg = c.bg1, fg = c.blue}},
    replace = {a = {bg = c.magenta, fg = c.bg1, gui = 'bold'}, b = {bg = c.bg1, fg = c.magenta}},
    command = {a = {bg = c.cyan, fg = c.bg1, gui = 'bold'}, b = {bg = c.bg1, fg = c.cyan}},
    terminal = {a = {bg = c.green, fg = c.bg1, gui = 'bold'}, b = {bg = c.bg1, fg = c.green}},
    inactive = {
        a = {bg = c.bg2, fg = c.fg3},
        b = {bg = c.bg1, fg = c.fg3},
        c = {bg = c.bg2, fg = c.fg2},
    },
}
