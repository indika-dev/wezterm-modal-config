---@meta Opts.Config
error "cannot require a meta file!"

-- luacheck: push ignore 631 (line is too long)

---@class Opts.Config
---@field public color? Opts.Config.Color
---
---
---Color configuration options.
---@class Opts.Config.Color
---@field public opacity?         number                           Window background opacity.
---@field public default_schemes? Opts.Config.Color.DefaultSchemes Default colorscheme names.
---
---
---@class Opts.Config.Color.DefaultSchemes
---@field public dark?  string Colorscheme name for dark appearance.
---@field public light? string Colorscheme name for light appearance.

-- luacheck: pop
