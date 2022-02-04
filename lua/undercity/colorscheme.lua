local highlight = function(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''

    local hl = 'highlight ' .. group .. ' ' .. style .. ' ' .. fg .. ' ' .. bg .. ' ' .. sp

    if color.link then
        vim.cmd('highlight! link ' .. group .. ' ' .. color.link)
    else
        vim.cmd(hl)
    end
end

return function(color_groups)
    if not color_groups or type(color_groups) ~= 'table' then
        error('A color_groups table is required')
    end

    if vim.g.colors_name then
        vim.cmd('hi clear')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'undercity'

    for group, color in pairs(color_groups) do
        highlight(group, color)
    end
end
