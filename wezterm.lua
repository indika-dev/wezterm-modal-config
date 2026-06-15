require "events"
local appearance = require "overrides.config.appearance"
local general = require "overrides.config.general"

local chord = require "plugs.chord" ---@class Chord
local lantern = require "plugs.lantern" ---@class Lantern

---@class Configuration
local config = require("config")
  :add(require "mappings.default")
  :add(require("mappings.modes").config)
  :init()

lantern.rekindle(config)

local ok, overrides = pcall(require, "overrides.mappings")
if ok then
  chord.apply_overrides(config, overrides)
end
chord.apply_overrides(config, appearance)
chord.apply_overrides(config, general)

chord.apply(config)

return config
