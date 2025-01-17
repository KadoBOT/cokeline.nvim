local fn = vim.fn

local M = {}

---Returns the color set by the current colorscheme for the `attr` attribute of
---the `hlgroup_name` highlight group in hexadecimal format.
---@param hlgroup_name  string
---@param attr  '"fg"'|'"bg"'
---@return string
M.get_hex = function(hlgroup_name, attr)
  local hlgroup_ID = fn.synIDtrans(fn.hlID(hlgroup_name))
  local hex = fn.synIDattr(hlgroup_ID, attr)
  return (hex ~= '') and hex or 'NONE'
end

return M
