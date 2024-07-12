---@class Config
local Config = {}

Config.front_end = "WebGpu"
Config.webgpu_force_fallback_adapter = false
---switch to low power mode when battery is low
if require("wezterm").battery_info()[1].state_of_charge < 0.35 then
  Config.webgpu_power_preference = "LowPower"
else
  if os.getenv "USER" == "stefan" then
    Config.webgpu_power_preference = "HighPerformance"
  else
    Config.webgpu_power_preference = "LowPower"
  end
end

Config.webgpu_preferred_adapter = require("utils.gpu_adapter"):pick_best()

return Config
