require "events"

local chord = require "plugs.chord" ---@class Chord
local lantern = require "plugs.lantern" ---@class Lantern

---@class Configuration
local config = require("config")
  :add(lantern.rekindle())
  :add(require "mappings.default")
  :add(require "mappings.modes")
  :init()

local ok, overrides = pcall(require, "overrides.mappings")
if ok then
  chord.apply_overrides(config, overrides)
end

chord.command.apply(config)

return config
