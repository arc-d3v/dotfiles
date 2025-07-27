local wezterm = require 'wezterm'

local config = {} 

config.color_scheme = 'tokyonight'
config.colors = {
  background = '#1A1B26'
}
config.font = wezterm.font('Noto Sans Mono', { weight="Regular", style="Normal", stretch="Normal" })
config.font_size = 11
config.window_padding = {
  left = 2,
  right = 2,
  top = 4,
  bottom = 2
}
config.enable_tab_bar = false

-- and finally, return the configuration to wezterm
return config
