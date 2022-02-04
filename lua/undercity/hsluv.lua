local lib = require('undercity.hsluv_lib')

local M = {
    to_hex = function(h, s, l)
        return lib.hsluv_to_hex({h, s, l})
    end,
}

return M
