local log = require("wezterm").plugin.require "https://github.com/sravioli/log.wz"

log.setup {
  enabled = true,
  threshold = "WARN",
  sinks = { default_enabled = true },
}

return log
