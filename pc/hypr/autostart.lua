-- AUTOSTART
-- Wiki: https://wiki.hypr.land/Configuring/Basics/Autostart/

hl.on("hyprland.start", function()
	hl.exec_cmd(terminal)
	hl.exec_cmd("nm-applet --indicator")
	hl.exec_cmd("waybar")
	hl.exec_cmd("swaync")
	hl.exec_cmd("swaybg -i ~/Pictures/hypr/wall-2.png -m fill")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")

	-- System
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
	hl.exec_cmd("systemctl --user start xdg-desktop-portal-hyprland")

	-- SSH (only if key exists)
	local ssh_key = os.getenv("HOME") .. "/.ssh/id_ed25519"
	if io.open(ssh_key) then
		hl.exec_cmd('eval "$(ssh-agent -s)" && ssh-add ~/.ssh/id_ed25519')
	end
end)
