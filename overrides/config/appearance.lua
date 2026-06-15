local Opts = require("opts").config ---@class Opts.Config
local SunTimes = require "overrides.config.SunTimes"
local color = require "utils.color" ---@class Color

local colorscheme = function()
  if os.getenv "USER" == "stefan" then
    local _nowepochtime = os.time(os.date "!*t")
    local epochTimesTable = SunTimes.GetSunTimes(51.09102, 6.5827)
    if
      _nowepochtime >= epochTimesTable.sunrise
      and _nowepochtime < epochTimesTable.sunset
    then
      return "kanagawa-lotus"
    else
      return "kanagawa-dragon"
    end
  else
    return "kanagawa-wave"
  end
end

local Config = {}

-- local themes = Config.color_schemes[colorscheme()]

---visual bell
Config.audible_bell = "Disabled"

Config.skip_close_confirmation_for_processes_named = {
  "bash",
  "sh",
  "zsh",
  "fish",
  "tmux",
  "nu",
  "cmd.exe",
  "pwsh.exe",
  "powershell.exe",
  "wsl.exe",
}

return Config
