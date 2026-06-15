---@module "events.augment-command-palette"

local wt = require "wezterm" ---@class Wezterm
local act = wt.action
local chord = require "plugs.chord" ---@class Chord
local lantern = require "plugs.lantern" ---@class Lantern

local function append_entries(entries, extra)
  for _, entry in ipairs(extra or {}) do
    entries[#entries + 1] = entry
  end
  return entries
end

wt.on("augment-command-palette", function(_window, _pane)
  local entries = {
    {
      brief = "Rename tab",
      icon = "md_rename_box",
      action = act.PromptInputLine {
        description = "Enter new name for tab",
        action = wt.action_callback(function(inner_window, _, line)
          if line then
            inner_window:active_tab():set_title(line)
          end
        end),
      },
    },
    {
      brief = "Lantern: colorscheme",
      icon = "md_palette",
      action = lantern.light.colorscheme(),
    },
    {
      brief = "Lantern: font",
      icon = "md_format_font",
      action = lantern.light.font(),
    },
    {
      brief = "Lantern: font size",
      icon = "md_format_font_size_decrease",
      action = lantern.light.font_size(),
    },
    {
      brief = "Lantern: line height",
      icon = "fa_text_height",
      action = lantern.light.font_leading(),
    },
    {
      brief = "Lantern: GPU",
      icon = "md_expansion_card",
      action = lantern.light.gpu(),
    },
    {
      brief = "Lantern: window opacity",
      icon = "md_opacity",
      action = lantern.light.window_opacity(),
    },
    {
      brief = "Lantern: window padding",
      icon = "md_dock_window",
      action = lantern.light.window_padding(),
    },
    {
      brief = "Lantern: cursor style",
      icon = "md_cursor_text",
      action = lantern.light.cursor_style(),
    },
    {
      brief = "Lantern: inactive pane opacity",
      icon = "md_blur_on",
      action = lantern.light.inactive_pane_opacity(),
    },
    {
      brief = "Lantern: font ligatures",
      icon = "md_format_text",
      action = lantern.light.font_ligatures(),
    },
    {
      brief = "Lantern: tab bar style",
      icon = "md_tab",
      action = lantern.light.tab_bar_style(),
    },
    {
      brief = "Invalidate cache",
      icon = "md_cached",
      action = wt.action_callback(function(_, _, _)
        require("plugs.memo").cache.clear()
      end),
    },
  }

  return append_entries(entries, chord.palette())
end)
