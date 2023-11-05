local wezterm = require("wezterm")
local colorscheme = require("colorscheme")
require("zen-mode")

local config = {}

colorscheme.set(config)

config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.font = wezterm.font("Maple Mono")
config.window_decorations = "RESIZE"
config.font_size = 14.0

return config
