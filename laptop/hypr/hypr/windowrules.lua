hl.window_rule({
	name = "float-apps",
	match = { class = "^(org\\.qbittorrent\\.qBittorrent|nemo)$" },
	float = true,
	size = { 1366, 768 },
	center = true,
})
hl.window_rule({
	name = "float-media",
	match = { class = "^(qimgv|mpv|com.github.PintaProject.Pinta)$" },
	float = true,
	center = true,
	size = { 1366, 768 },
})
hl.window_rule({
	name = "float-tray-apps",
	match = { class = "^(blueman-manager|org.pulseaudio.pavucontrol|com.network.manager)$" },
	float = true,
	opacity = 0.9,
	size = { 600, 400 },
	move = { 1300, 40 },
})
hl.window_rule({
	name = "float-packettracer-subwindows",
	match = {
		class = "^PacketTracer$",
		title = "negative:^Cisco Packet Tracer",
	},
	float = true,
	size = { 800, 950 },
	center = true,
})
hl.window_rule({
	name = "float-brave-subwindows",
	match = {
		class = "^brave-browser",
		title = "^(Untitled - Brave)$",
	},
	float = true,
	size = { 800, 950 },
	center = true,
})
hl.window_rule({
	name = "float-desktop-subwindows",
	match = { class = "^(DesktopEditors)$" },
	float = true,
	center = true,
})
hl.window_rule({
	name = "float-gns-subwindows",
	match = {
		class = "^(gnome-terminal-server)$",
	},
	float = true,
	size = { 800, 950 },
	center = true,
})
-- Workspace Split: Allows both
-- Kitty - VSCode - Browser - Social -> Programming
-- Obsidian - ONLYOFFICE - Browser - Social -> Document Editing
hl.window_rule({
	match = { class = "^(kitty|md\\.obsidian\\.Obsidian)$" },
	workspace = "1",
})
hl.window_rule({
	match = { class = "^(code|ONLYOFFICE)$" },
	workspace = "2",
})
hl.window_rule({
	match = { class = "^(brave-browser)$" },
	workspace = "3",
})
hl.window_rule({
	match = { class = "^(vesktop|com.rtosta.zapzap)$" },
	workspace = "4",
})
hl.window_rule({
	match = {
		class = "^(VirtualBox Manager)$",
		title = "^Oracle VirtualBox Manager",
	},
	workspace = "9",
})
