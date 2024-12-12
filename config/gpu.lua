local Config = {}

if os.getenv "USER" == "stefan" then
  Config.front_end = "WebGpu"
  Config.webgpu_force_fallback_adapter = false
  local battery_charge = require("wezterm").battery_info()[1].state_of_charge
  if battery_charge < 0.35 then
    ---switch to low power mode when battery is low
    Config.webgpu_power_preference = "LowPower"
  else
    Config.webgpu_power_preference = "HighPerformance"
  end
else
  Config.front_end = "OpenGL"
  Config.webgpu_power_preference = "HighPerformance"
  Config.max_fps = 60
end

Config.webgpu_preferred_adapter = require("utils.gpu"):pick_best()

return Config
