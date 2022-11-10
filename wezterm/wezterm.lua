local wt = require("wezterm")

local scheme = wt.get_builtin_color_schemes()["Andromeda"]
scheme.cursor_bg = "#52ad70"
scheme.cursor_fg = "black"

return {
	enable_tab_bar = false,
	-- font = wt.font("Hack Nerd Font", { weight = 325 }),
	font = wt.font("Operator Mono Lig", { weight = 325 }),
	-- font = wt.font("Fira Code", { weight = 325 }),
	font_size = 18,
    color_schemes = {
    ["Andromeda"] = scheme
  },
	color_scheme = "Andromeda",
	-- color_scheme = "Catppuccin Frappe",
	custom_block_glyphs = true,
	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
    cursor_blink_ease_in = "Constant",
    cursor_blink_ease_out = "Constant",
    enable_csi_u_key_encoding = true
}
