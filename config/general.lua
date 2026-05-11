local Icons = require "utils.class.icon"
local fs = require("utils.fn").fs

local Config = {}

Config.leader = { key = "Space", mods = "CTRL|ALT", timeout_milliseconds = 1000 }

if fs.platform().is_win then
  Config.default_prog =
    { "pwsh", "-NoLogo", "-ExecutionPolicy", "RemoteSigned", "-NoProfileLoadTime" }

  Config.launch_menu = {
    {
      label = Icons.Progs["pwsh.exe"] .. " PowerShell V7",
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
      label = Icons.Progs["wsl.exe"] .. " Fedora 44",
      args = { "--cd ~" },
      cwd = "~",
    },
    -- { label = "Command Prompt", args = { "cmd.exe" }, cwd = "~" },
    -- { label = Icons.Progs["git"] .. " Git bash", args = { "sh", "-l" }, cwd = "~" },
  }

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  Config.wsl_domains = {
    {
      name = "WSL:Ubuntu",
      distribution = "Ubuntu",
      username = "stefan.maassen",
      default_cwd = "~",
    },
    {
      name = "WSL:FedoraLinux-44",
      distribution = "FedoraLinux-44",
      username = "stefan.maassen",
      default_cwd = "~",
    },
  }
end

Config.default_cwd = fs.home()

-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
Config.ssh_domains = {}

-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
Config.unix_domains = {}

Config.default_domain = "WSL:FedoraLinux-44"

return Config
