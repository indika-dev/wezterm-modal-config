local warp = require "plugs.warp" ---@class Warp.Api
local fs = warp.filesystem ---@class Warp.FileSystem

local sigil = require "plugs.sigil" ---@class Sigil.Api

local Config = {}

if fs.is_win then
  Config.default_prog = { "wsl", "--distribution", "FedoraLinux-44", "--cd", "~" }

  Config.launch_menu = {
    {
      label = sigil.icon "pwsh.exe" .. " PowerShell V7",
      args = {
        "pwsh",
        "-NoLogo",
        "-ExecutionPolicy",
        "RemoteSigned",
        "-NoProfileLoadTime",
      },
      cwd = "~",
    },
    {
      label = sigil.icon "pwsh.exe" .. " PowerShell V5",
      args = { "powershell" },
      cwd = "~",
    },
    { label = "Command Prompt", args = { "cmd.exe" }, cwd = "~" },
    { label = sigil.icon "git" .. " Git bash", args = { "sh", "-l" }, cwd = "~" },
  }

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

Config.default_cwd = fs.home

-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
Config.ssh_domains = {}

-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
Config.unix_domains = {}

return Config
