hl.on("hyprland.start", function()
	hl.exec_cmd(
		"/nix/store/hb0kkjdwmzfbrlslvd7c59k8y3lq0w0w-dbus-1.16.2/bin/dbus-update-activation-environment --systemd DISPLAY HYPRLAND_INSTANCE_SIGNATURE WAYLAND_DISPLAY XDG_CURRENT_DESKTOP XDG_SESSION_TYPE && systemctl --user stop hyprland-session.target && systemctl --user start hyprland-session.target"
	)
end)
