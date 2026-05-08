---@module "plugs.ribbon"
---@author sravioli
---@license GNU-GPLv3

local ribbon = require("wezterm").plugin.require "https://github.com/sravioli/ribbon.wz"

ribbon.setup(require("opts").utils.layout)

return ribbon
