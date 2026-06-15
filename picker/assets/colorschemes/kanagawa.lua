---Ported from: https://github.com/rebelot/kanagawa.nvim
---@module "picker.assets.colorschemes.kanagawa-wave"
---@author sravioli
---@license GNU-GPLv3

---@class PickList
local M = {}

local color = require("utils").fn.color

M.scheme = {
  foreground = "#dcd7ba",
  background = "#1f1f28",

  cursor_bg = "#c8c093",
  cursor_fg = "#c8c093",
  cursor_border = "#c8c093",

  selection_fg = "#c8c093",
  selection_bg = "#2d4f67",

  scrollbar_thumb = "#16161d",
  split = "#16161d",

  ansi = {
    "#090618",
    "#c34043",
    "#76946a",
    "#c0a36e",
    "#7e9cd8",
    "#957fb8",
    "#6a9589",
    "#c8c093",
  },
  brights = {
    "#727169",
    "#e82424",
    "#98bb6c",
    "#e6c384",
    "#7fb4ca",
    "#938aa9",
    "#7aa89f",
    "#dcd7ba",
  },
  indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
  compose_cursor = "#938AA9",
  visual_bell = "#16161D",
  copy_mode_active_highlight_bg = { Color = "#223249" },
  copy_mode_active_highlight_fg = { Color = "#DCD7BA" },
  copy_mode_inactive_highlight_bg = { Color = "#C8C093" },
  copy_mode_inactive_highlight_fg = { Color = "#16161D" },
  quick_select_label_bg = { Color = "#FF5D62" },
  quick_select_label_fg = { Color = "#DCD7BA" },
  quick_select_match_bg = { Color = "#FF9E3B" },
  quick_select_match_fg = { Color = "#DCD7BA" },
  tab_bar = {
    background = "#16161D",
    inactive_tab_edge = "#727169",
    active_tab = { bg_color = "#7E9CD8", fg_color = "#1F1F28" },
    inactive_tab = { bg_color = "#727169", fg_color = "#181820" },
    inactive_tab_hover = { bg_color = "#223249", fg_color = "#727169", italic = true },
    new_tab = { bg_color = "#727169", fg_color = "#181820" },
    new_tab_hover = { bg_color = "#9CABCA", fg_color = "#181820", italic = true },
  },
}

function M.get()
  return { id = "kanagawa", label = "Kanagawa" }
end

function M.activate(Config, callback_opts)
  local theme = M.scheme
  color.set_scheme(Config, theme, callback_opts.id)
end

return M
