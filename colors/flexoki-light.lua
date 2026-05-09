local flexoki = require('flexoki')
local config = require('flexoki.config')

local variant = config.options.light_variant or 'light'
flexoki.colorscheme({ variant = variant })
