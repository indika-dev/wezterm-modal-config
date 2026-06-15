---@module "plugs.lantern"
---@author sravioli
---@license GNU-GPLv3

local lantern = require("wezterm").plugin.require "https://github.com/sravioli/lantern.wz"

local function set_tab_button(cfg, theme)
  require("utils.color").set_tab_button(cfg, theme)
end

lantern.setup {
  default_font = require "config.font",
  color = {
    opacity = require("opts").config.color.opacity,
    set_tab_button = set_tab_button,
  },
}

return lantern
