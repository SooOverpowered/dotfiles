local wezterm = require("wezterm")
local config = {}
config.colors = require("cyberdream")
config.font = wezterm.font_with_fallback({
	{
		family = "FiraCode Nerd Font",
		weight = "Medium",
	},
	{
		family = "FiraCode Nerd Font Mono",
		weight = "Medium",
	},
})
config.anti_alias_custom_block_glyphs = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.native_macos_fullscreen_mode = true
config.window_padding = {
	top = "2cell",
}
config.mouse_bindings = {
	-- Cmd-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "SUPER",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}
config.keys = {
	{ mods = "OPT", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "b" }) },
	{ mods = "OPT", key = "RightArrow", action = wezterm.action.SendKey({ mods = "ALT", key = "f" }) },
	{ mods = "CMD", key = "LeftArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "a" }) },
	{ mods = "CMD", key = "RightArrow", action = wezterm.action.SendKey({ mods = "CTRL", key = "e" }) },
	{ mods = "CMD", key = "Backspace", action = wezterm.action.SendKey({ mods = "CTRL", key = "u" }) },
}
config.bypass_mouse_reporting_modifiers = "SHIFT"
config.debug_key_events = true
config.window_background_opacity = 0.5
config.macos_window_background_blur = 50
config.front_end = "WebGpu"
config.audible_bell = "SystemBeep"
return config
