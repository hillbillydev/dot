-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Key bindings for splitting panes
config.keys = {
  -- Split horizontally
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- Split vertically
  {
    key = 'v',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

config.color_scheme = 'One Dark (Gogh)'
config.scrollback_lines = 15000
config.enable_tab_bar = false
-- config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 10
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

-- and finally, return the configuration to wezterm
return config
