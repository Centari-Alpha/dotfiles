local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {
  background = "#1e222a", -- Soft deep charcoal
  foreground = "#e6e8eb", -- Off-white/light gray
  
  cursor_bg = "#87afdf",  -- Desaturated sky blue cursor
  cursor_fg = "#1e222a",
  
  selection_bg = "#2e3842", -- Muted contrast layer for selections
  selection_fg = "#e6e8eb",
  -- Standard terminal colors (ANSI) mapped to your soft palette
  ansi = {
    "#1e222a", -- Black
    "#d7875f", -- Red (Mapped to your Terracotta Orange for lower stress)
    "#87af87", -- Green (Muted sage)
    "#dfaf87", -- Yellow (Warm ochre)
    "#87afdf", -- Blue (Desaturated sky)
    "#6c7a89", -- Magenta (Mapped to your mid-gray to prevent rainbow fatigue)
    "#87afdf", -- Cyan (Mapped to blue)
    "#e6e8eb", -- White
  },
  
  -- Bright variants
  brights = {
    "#6c7a89", -- Bright Black (Mapped to your comment gray)
    "#d7875f",
    "#87af87",
    "#dfaf87",
    "#87afdf",
    "#6c7a89",
    "#87afdf",
    "#e6e8eb",
  }
}

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 15.0
config.window_background_opacity = 0.8
config.win32_system_backdrop = 'Acrylic'

return config
