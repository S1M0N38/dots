local wezterm = require("wezterm")

local M = {}

local function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function M.set(config)
	local app = get_appearance()
	print(app)
	if app:find("Dark") then
		config.color_scheme = "Tokyo Night Storm"
	else
		config.color_scheme = "Tokyo Night Day"
	end
end

return M
