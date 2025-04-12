-- Pull in the wezterm API
local wezterm = require("wezterm")
local mappings = require("modules.mappings")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "Poimandres"
config.font = wezterm.font_with_fallback({
	"JetBrainsMono Nerd Font",
	"Noto Color Emoji",
})
config.font_size = 15
config.line_height = 1.2
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 1.0
config.macos_window_background_blur = 0
config.scrollback_lines = 10000
config.use_fancy_tab_bar = true
-- config.window_decorations = "RESIZE"
-- config.window_padding = {
-- 	left = 30,
-- 	right = 30,
-- 	top = 30,
-- 	bottom = 30,
-- }
config.leader = mappings.leader
config.keys = mappings.keys
config.key_tables = mappings.key_tables

-- and finally, return the configuration to wezterm
return config
