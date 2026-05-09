---@alias Variant 'dark' | 'light' | 'light_high_contrast'
---@alias FloatWindowStyle 'auto' | 'border' | 'solid' | 'borderless'

local M = {}

---@class FlexokiTransparentOptions
---@field editor boolean|nil When true, make core editor surfaces transparent (`Normal`, etc.)
---@field floats boolean|nil When true, make float body/title surfaces transparent (`NormalFloat`, `FloatTitle`)
---@field float_border boolean|nil When true, make float border surface transparent (`FloatBorder`)
---@field ui boolean|nil When true, make message/status UI surfaces transparent (`MsgArea`, etc.)
---@field menus boolean|nil When true, make completion / popup-menu surfaces transparent (`Pmenu`, etc.)

---@class FlexokiOptions
M.options = {
	---Set the desired variant: 'auto' will follow the vim background,
	---defaulting to 'main' for dark and 'dawn' for light. To change the dark
	---variant, use `options.dark_variant = 'moon'`.
	---@type 'auto' | Variant | nil
	variant = 'auto',

	---Set the desired dark variant: applies when `options.variant` is set to
	---'auto' to match `vim.o.background`.
	---@type Variant?
	dark_variant = 'dark',

	---Set the desired light variant: applies when `options.variant` is set to
	---'auto' to match `vim.o.background`
	---@type Variant?
	light_variant = 'light',

	---The style to use for float windows, `winborder == 'none'` works best
	---with a different background than code, while all the other ones work
	---best with the same one, 'auto' will check `vim.opt.winborder` when
	---applying the colorscheme to decide
	---@type FloatWindowStyle?
	float_window_style = 'auto',

	---Make selected UI surfaces transparent by setting their background to `none`.
	---@type FlexokiTransparentOptions?
	transparent = {},

	---@type table<string, vim.api.keyset.highlight>?
	highlight_groups = {},
}

---@param options FlexokiOptions|nil
function M.extend(options)
	M.options = vim.tbl_deep_extend('force', M.options, options or {})
end

return M
