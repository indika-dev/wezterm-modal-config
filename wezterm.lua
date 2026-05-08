require "events"

local lantern = require "plugs.lantern" ---@class Lantern

---@class Configuration
local config = require("config")
  :add(lantern.rekindle())
  :add(require "mappings.default")
  :add(require "mappings.modes")
  :init()

local ok, overrides = pcall(require, "overrides.mappings")
if ok then
  require("plugs.chord").apply_overrides(config, overrides)
end

return config
