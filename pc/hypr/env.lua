-- ENVIRONMENT VARIABLES
-- Wiki: https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- NVIDIA
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("__GL_VRR_ALLOWED", "0")
hl.env("AQ_NO_ATOMIC", "1") -- Extra NVIDIA stability

-- Theming & cursors
hl.env("GTK_THEME", "Adwaita-dark")
hl.env("XCURSOR_SIZE", "48")
hl.env("HYPRCURSOR_SIZE", "36")

-- Utilities
hl.env("GRIMBLAST_EDITOR", "satty --filename")
hl.env("XDG_MENU_PREFIX", "arch-")
