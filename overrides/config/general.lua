local warp = require "plugs.warp" ---@class Warp.Api
local fs = warp.filesystem ---@class Warp.FileSystem

local Config = {}

if fs.is_win then
  Config.default_prog = { "wsl", "--distribution", "FedoraLinux-44", "--cd", "~" }

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  Config.wsl_domains = {
    {
      name = "WSL:Ubuntu",
      distribution = "Ubuntu",
      username = "stefan",
      default_cwd = "~",
      default_prog = { "bash", "-i", "-l" },
    },
    {
      name = "WSL:AlmaLinux-10",
      distribution = "AlmaLinux",
      username = "stefan",
      default_cwd = "/home/stefan",
    },
    {
      name = "WSL:FedoraLinux-44",
      distribution = "FedoraLinux",
      username = "stefan",
      default_cwd = "/home/stefan",
    },
  }
end

return Config
