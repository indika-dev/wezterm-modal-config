local SunTimes = require "config.SunTimes"
local Utils = require "utils"
local color = Utils.fn.color

---@diagnostic disable-next-line: undefined-field
local G = require("wezterm").GLOBAL

local Config = {}

local colorscheme = function()
  if os.getenv "USER" == "stefan" then
    local _nowepochtime = os.time(os.date "!*t")
    local epochTimesTable = SunTimes.GetSunTimes(51.09102, 6.5827)
    if
      _nowepochtime >= epochTimesTable.sunrise
      and _nowepochtime < epochTimesTable.sunset
    then
      return "kanagawa-lotus"
    else
      return "kanagawa-dragon"
    end
  else
    return "kanagawa-wave"
  end
end

Config.color_schemes = color.get_schemes()
Config.color_scheme = color.get_scheme()
local theme = Config.color_schemes[colorscheme()]

Config.background = {
  {
    source = { Color = theme.background },
    width = "100%",
    height = "100%",
    opacity = G.opacity or 1,
  },
}

Config.bold_brightens_ansi_colors = "BrightAndBold"

---char select and command palette
Config.char_select_bg_color = theme.brights[6]
Config.char_select_fg_color = theme.background
if os.getenv "USER" == "stefan" then
  Config.char_select_font_size = 16
else
  Config.char_select_font_size = 14
end

Config.command_palette_bg_color = theme.brights[6]
Config.command_palette_fg_color = theme.background
Config.command_palette_font_size = 14
Config.command_palette_rows = 20

---cursor
Config.cursor_blink_ease_in = "EaseIn"
Config.cursor_blink_ease_out = "EaseOut"
Config.cursor_blink_rate = 500
Config.default_cursor_style = "BlinkingUnderline"
Config.cursor_thickness = 1
Config.force_reverse_video_cursor = true

Config.enable_scroll_bar = true

Config.hide_mouse_cursor_when_typing = true

---text blink
Config.text_blink_ease_in = "EaseIn"
Config.text_blink_ease_out = "EaseOut"
Config.text_blink_rapid_ease_in = "Linear"
Config.text_blink_rapid_ease_out = "Linear"
Config.text_blink_rate = 500
Config.text_blink_rate_rapid = 250

---visual bell
Config.audible_bell = "Disabled"
Config.visual_bell = {
  fade_in_function = "EaseOut",
  fade_in_duration_ms = 200,
  fade_out_function = "EaseIn",
  fade_out_duration_ms = 200,
}

---window appearance
Config.window_padding = { left = 2, right = 2, top = 2, bottom = 1 }
Config.integrated_title_button_alignment = "Right"
Config.integrated_title_button_style = "Windows"
Config.integrated_title_buttons = { "Hide", "Maximize", "Close" }

---exit behavior
Config.clean_exit_codes = { 130 }
Config.exit_behavior = "Close"
Config.exit_behavior_messaging = "Verbose"
Config.skip_close_confirmation_for_processes_named = {
  "bash",
  "sh",
  "zsh",
  "fish",
  "tmux",
  "nu",
  "cmd.exe",
  "pwsh.exe",
  "powershell.exe",
}
Config.window_close_confirmation = "AlwaysPrompt"

color.set_tab_button(Config, theme)

return Config
