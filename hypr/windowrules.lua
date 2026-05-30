-- WINDOW RULES
-- Wiki: https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({ match = { content = "3" }, float = true, fullscreen = true })

-- Games & Steam
hl.window_rule({ match = { class = "^steam_app_" }, float = true })
hl.window_rule({ match = { class = "^([Ss]team)$" }, center = true })
hl.window_rule({
	match = { class = "steam_app_2694490" },
	float = true,
	size = { 1900, 900 },
	center = true,
	fullscreen = false,
})

-- Media
hl.window_rule({
	name = "float-media-img",
	match = { class = "^(qimgv)$" },
	float = true,
	center = true,
	size = { 1366, 768 },
})
hl.window_rule({
	name = "float-media-vid",
	match = { class = "^(mpv)$" },
	float = true,
	center = true,
	size = { 1366, 768 },
})

-- Apps
hl.window_rule({
	name = "float-qbittorrent",
	match = { class = "^(org\\.qbittorrent\\.qBittorrent)$" },
	float = true,
	size = { 1366, 768 },
	center = true,
	opacity = 0.85,
})
hl.window_rule({
	name = "float-nemo",
	match = { class = "^(nemo)$" },
	float = true,
	size = { 1366, 768 },
	center = true,
	opacity = 0.85,
})

-- Global
hl.window_rule({ name = "suppress-maximize-events", match = { class = ".*" }, suppress_event = "maximize" })

-- XWayland fix
hl.window_rule({
	name = "fix-xwayland-drags",
	match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
	no_focus = true,
})

-- Hyprland-run helper
hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },
	move = "20 monitor_h-120",
	float = true,
})
