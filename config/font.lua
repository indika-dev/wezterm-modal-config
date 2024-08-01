---@diagnostic disable: undefined-field

local wt = require "wezterm"
local fs = require("utils.fn").fs

local Config = {}

Config.adjust_window_size_when_changing_font_size = false
Config.allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace"
Config.anti_alias_custom_block_glyphs = true

local firacode_features = {
  -- "cv01", ---styles: a
  -- "cv02", ---styles: g
  "cv06", ---styles: i (03..06)
  -- "cv09", ---styles: l (07..10)
  "cv12", ---styles: 0 (11..13, zero)
  "cv14", ---styles: 3
  "cv16", ---styles: * (15..16)
  -- "cv17", ---styles: ~
  -- "cv18", ---styles: %
  -- "cv19", ---styles: <= (19..20)
  -- "cv21", ---styles: =< (21..22)
  -- "cv23", ---styles: >=
  -- "cv24", ---styles: /=
  "cv25", ---styles: .-
  "cv26", ---styles: :-
  -- "cv27", ---styles: []
  "cv28", ---styles: {. .}
  "cv29", ---styles: { }
  -- "cv30", ---styles: |
  "cv31", ---styles: ()
  "cv32", ---styles: .=
  -- "ss01", ---styles: r
  -- "ss02", ---styles: <= >=
  "ss03", ---styles: &
  "ss04", ---styles: $
  "ss05", ---styles: @
  -- "ss06", ---styles: \\
  "ss07", ---styles: =~ !~
  -- "ss08", ---styles: == === != !==
  "ss09", ---styles: >>= <<= ||= |=
  -- "ss10", ---styles: Fl Tl fi fj fl ft
  -- "onum", ---styles: 1234567890
}

Config.font = wt.font_with_fallback {
  {
    family = "FiraCode Nerd Font",
    weight = "Regular",
    harfbuzz_features = firacode_features,
  },
  { family = "Noto Color Emoji" },
  { family = "LegacyComputing" },
}

if os.getenv "USER" == "stefan" then
  if fs.platform().is_win then
    Config.font_size = 16
  else
    Config.font_size = 16
  end
else
  if fs.platform().is_win then
    Config.font_size = 14
  else
    Config.font_size = 14
  end
end

Config.underline_position = -2.5
Config.underline_thickness = "2px"
Config.warn_about_missing_glyphs = false

---@diagnostic disable-next-line: unused-local
local monaspace_features =
  { "dlig", "ss01", "ss02", "ss03", "ss04", "ss05", "ss06", "ss07", "ss08" }

Config.font_rules = {
  {
    intensity = "Normal",
    italic = true,
    font = wt.font_with_fallback {
      {
        -- this one is for italic glyphs
        -- family = "Monaspace Radon Var",
        family = "Cascadia Code NF",
        style = "Italic",
        weight = "Regular",
        stretch = "Expanded",
        -- harfbuzz_features = firacode_features,
      },
      { family = "Symbols Nerd Font" },
    },
  },
  {
    intensity = "Bold",
    -- italic = true,
    font = wt.font_with_fallback {
      {
        -- this one is for bold glyphs
        -- family = "Monaspace Krypton Var",
        family = "FiraCode Nerd Font",
        -- style = "Italic",
        -- style = "Normal",
        weight = "Medium",
        harfbuzz_features = firacode_features,
        scale = 1.0,
      },
      { family = "Symbols Nerd Font" },
    },
  },
}

return Config
