local Icons = require "utils.class.icon"
local fs = require("utils.fn").fs

local Config = {}

if fs.platform().is_win then
  Config.default_prog = {
    "wsl.exe",
    "--cd",
    "~",
    "-d",
    "FedoraLinux-44",
  }

  Config.launch_menu = {
    {
      label = Icons.Progs["bash"] .. " Fedora 44",
      args = {
        "wsl.exe",
        "--cd",
        "~",
        "-d",
        "FedoraLinux-44",
      },
    },
    {
      label = "NuShell",
      args = { "nu.exe" },
    },
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
      label = Icons.Progs["pwsh.exe"] .. " PowerShell V5",
      args = { "powershell" },
      cwd = "~",
    },
    { label = "Command Prompt", args = { "cmd.exe" }, cwd = "~" },
    { label = Icons.Progs["git"] .. " Git bash", args = { "sh", "-l" }, cwd = "~" },
    {
      label = "Dev-VS",
      args = {
        "cmd.exe",
        "/k",
        "C:\\Program Files (x86)\\Microsoft Visual Studio\\18\\BuildTools\\Common7\\Tools\\VsDevCmd.bat",
        "-startdir=none",
        "-arch=x64",
        "-host_arch=x64",
      },
    },
    {
      label = "Dev-PSVS",
      args = {
        "pwsh.exe",
        "-NoExit",
        "-Command",
        '&{Import-Module "C:\\Program Files (x86)\\Microsoft Visual Studio\\18\\BuildTools\\Common7\\Tools\\Microsoft.VisualStudio.DevShell.dll"; Enter-VsDevShell f7ae0a9d -SkipAutomaticLocation -DevCmdArguments "-arch=x64 -host_arch=x64"}',
      },
    },
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
      name = "WSL:Fedora",
      distribution = "FedoraLinux-44",
      username = "stefan",
      default_cwd = "/home/stefan",
    },
    {
      name = "WSL:AlmaLinux",
      distribution = "AlmaLinux-10",
      username = "stefan",
      default_cwd = "/home/stefan",
    },
  }
end

Config.default_cwd = fs.home()

-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
Config.ssh_domains = {}

-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
Config.unix_domains = {}

return Config
