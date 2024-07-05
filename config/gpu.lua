---@class Config
local Config = {}

Config.front_end = "WebGpu"
Config.webgpu_force_fallback_adapter = false
if os.getenv "USER" == "stefan" then
  Config.webgpu_power_preference = "HighPerformace"
else
  Config.webgpu_power_preference = "LowPower"
end
Config.webgpu_preferred_adapter = require("utils.gpu_adapter"):pick_best()

return Config
