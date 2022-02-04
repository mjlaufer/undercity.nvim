local colorscheme = require('undercity.colorscheme')
local highlight_groups = require('undercity.highlight_groups')

local M = {}

M.colorscheme = function()
    colorscheme(highlight_groups)
end

return M
