-- WINDOW RULES
-- Wiki: https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({ match = { class = "^([Ss]team)$" }, center = true })

-- Float: Apps (Nemo / QBittorrent)
hl.window_rule({
	name = "float-apps",
	match = { class = "^(org\\.qbittorrent\\.qBittorrent|nemo)$" },
	float = true,
	size = { 1366, 768 },
	center = true,
	opacity = 0.80,
})
-- Float-NoOpacity: Media (QIMGv & MPV)
hl.window_rule({
	name = "float-media",
	match = { class = "^(qimgv|mpv)$" },
	float = true,
	center = true,
	size = { 1366, 768 },
})
-- 1: Flex + Kitty
hl.window_rule({ match = { class = "^(kitty)$" }, workspace = "1" })
-- 2: Games ( Heroic & Steam )
hl.window_rule({ match = { content = "game" }, float = true })
hl.window_rule({ match = { class = "^steam_app_" }, float = true, center = true, workspace = "1" })
hl.window_rule({
	match = { class = "steam_app_2694490" },
	size = { 1900, 900 },
	fullscreen = false,
})
-- 2: VSCode
hl.window_rule({ match = { class = "^(code)$" }, opacity = 0.9, workspace = "1" })
-- 3: Browsers
hl.window_rule({ match = { class = "^(brave-browser)$" }, opacity = 0.9, workspace = "3" })
hl.window_rule({ match = { title = "^Grok$" }, workspace = "3" })
-- 4: Social
hl.window_rule({ match = { class = "^(discord|com.rtosta.zapzap)$" }, opacity = 0.90, workspace = "4" })
-- 5: AudioRelay
hl.window_rule({ match = { title = "^AudioRelay" }, opacity = 0.9, workspace = "5" })

-- Global
hl.window_rule({ name = "suppress-maximize-events", match = { class = ".*" }, suppress_event = "maximize" })
-- XWayland Drag Fix
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
