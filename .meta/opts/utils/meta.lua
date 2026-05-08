---@meta Opts.Utils
error "cannot require a meta file!"
-- luacheck: push ignore 631 (line is too long)

---@class Opts.Utils
---@field public logger? Opts.Utils.Logger
---@field public layout? Opts.Utils.Ribbon Ribbon configuration, loaded from `opts.utils.layout`.
---@field public config? Opts.Utils.Config

-- luacheck: pop
