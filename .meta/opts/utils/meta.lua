---@meta Opts.Utils
error "cannot require a meta file!"
-- luacheck: push ignore 631 (line is too long)

---@class Opts.Utils.Base
---@field public log? Opts.Utils.Logger

---@class Opts.Utils
---@field public logger? Opts.Utils.Logger
---@field public ribbon? Opts.Utils.Ribbon Ribbon configuration, loaded from `opts.utils.ribbon`.
---@field public config? Opts.Utils.Config

-- luacheck: pop
