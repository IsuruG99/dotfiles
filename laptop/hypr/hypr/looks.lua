-- LOOK AND FEEL
hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 5,
		border_size = 2,

		col = {
			active_border = { colors = { "rgba(56b6c2ee)", "rgba(e06c75ee)" }, angle = 45 },
			inactive_border = "rgba(212234aa)",
		},

		resize_on_border = false,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 0,
		rounding_power = 0,

		active_opacity = 0.9,
		inactive_opacity = 0.9,

		shadow = {
			enabled = false,
		},

		blur = {
			enabled = false,
		},
	},
})

-- Animations
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

hl.animation({ leaf = "global", enabled = false })

hl.animation({ leaf = "border", enabled = false })
hl.animation({ leaf = "windows", enabled = false })
hl.animation({ leaf = "windowsIn", enabled = false })
hl.animation({ leaf = "windowsOut", enabled = false })

hl.animation({ leaf = "fadeIn", enabled = false })
hl.animation({ leaf = "fadeOut", enabled = false })
hl.animation({ leaf = "fade", enabled = false })

hl.animation({ leaf = "layers", enabled = false })
hl.animation({ leaf = "layersIn", enabled = false })
hl.animation({ leaf = "layersOut", enabled = false })
hl.animation({ leaf = "fadeLayersIn", enabled = false })
hl.animation({ leaf = "fadeLayersOut", enabled = false })

hl.animation({ leaf = "workspaces", enabled = false })
hl.animation({ leaf = "workspacesIn", enabled = false })
hl.animation({ leaf = "workspacesOut", enabled = false })

hl.animation({ leaf = "zoomFactor", enabled = false })

-- Layouts
hl.config({ dwindle = { preserve_split = true } })
hl.config({ master = { new_status = "master" } })

-- Misc
hl.config({
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = false,
	},
	debug = {
		vfr = true,
	},
})
