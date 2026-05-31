-- Hyprland 0.55+ Main Configuration (Lua)
-- Wiki: https://wiki.hypr.land/Configuring/Start/
-- Load modular files (each file is isolated for safety)
local M = {}

require("monitors")
require("variables")
require("autostart")
require("env")
require("looks")
require("input")
require("binds")
require("windowrules")

print("✅ Hyprland Lua config loaded successfully")
