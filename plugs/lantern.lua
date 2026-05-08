---@module "plugs.lantern"
---@author sravioli
---@license GNU-GPLv3

local lantern = require("wezterm").plugin.require "https://github.com/sravioli/lantern.wz"

lantern.setup {
  default_font = require "config.font",
  color = {
    opacity = require("opts").config.color.opacity,
  },
}

return lantern
