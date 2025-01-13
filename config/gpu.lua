local Config = {}

if os.getenv "USER" == "stefan" then
  Config.front_end = "WebGpu"
  Config.webgpu_preferred_adapter = require("utils.gpu"):pick_best()
else
  Config.front_end = "OpenGL"
end
Config.max_fps = 60
Config.webgpu_force_fallback_adapter = false
---switch to low power mode when battery is low
---@diagnostic disable-next-line: undefined-field
local battery = require("wezterm").battery_info()[1]
Config.webgpu_power_preference = (battery and battery.state_of_charge < 0.35)
    and "LowPower"
  or "HighPerformance"

return Config
