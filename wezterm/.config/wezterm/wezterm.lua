local wezterm = require 'wezterm'
local config = wezterm.config_builder()
config.color_scheme = 'OneDark (base16)'
-- config.font = wezterm.font 'FiraCode'
config.font = wezterm.font 'Maple Mono'
config.enable_tab_bar = false
config.default_prog = { '/usr/bin/fish' }
return config
