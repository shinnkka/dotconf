require("noctalia.noctalia-colors")
require("noctalia.bind")
require("sub.desktop")
require("plugins.hymission")
---------------------
---- MY PROGRAMS ----
---------------------

local terminal = "kitty"
local fileManager = "thunar"

local mainMod = "SUPER"

-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("/usr/lib/pam_kwallet_init")
	hl.exec_cmd("xrdb -merge ~/.Xresources")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	hl.exec_cmd("fcitx5")
	hl.exec_cmd("hyprpm reload")
	hl.exec_cmd("kdeconnect-indicator")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "Breeze")
hl.env("XCURSOR_THEME", "Breeze")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("GRIMBLAST_EDITOR", "swappy -f")
hl.env("QT_QPA_PLATFORMTHEME", "hyprqt6engine")
hl.env("XDG_MENU_PREFIX", "arch-")

-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
	general = {
		gaps_in = 5,
		gaps_out = 10,
		border_size = 2,

		layout = "dwindle",
	},

	decoration = {
		rounding = 15,
		rounding_power = 2,

		active_opacity = 0.9,
		inactive_opacity = 0.8,

		shadow = {
			enabled = true,
			range = 4,
			render_power = 3,
			color = "rgba(1a1a1aee)",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		preserve_split = true,
	},

	master = {
		new_status = "master",
	},

	scrolling = {
		column_width = 0.45,
	},

	misc = {
		force_default_wallpaper = -1,
		disable_hyprland_logo = false,
		focus_on_activate = true,
	},

	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = true,
		},
	},

	xwayland = {
		force_zero_scaling = true,
	},
})

----------------
---- CURVES ----
----------------

hl.curve("easeOutQuint", {
	type = "bezier",
	points = { { 0.23, 1 }, { 0.32, 1 } },
})

hl.curve("easeInOutCubic", {
	type = "bezier",
	points = { { 0.65, 0.05 }, { 0.36, 1 } },
})

hl.curve("linear", {
	type = "bezier",
	points = { { 0, 0 }, { 1, 1 } },
})

hl.curve("almostLinear", {
	type = "bezier",
	points = { { 0.5, 0.5 }, { 0.75, 1 } },
})

hl.curve("quick", {
	type = "bezier",
	points = { { 0.15, 0 }, { 0.1, 1 } },
})

--------------------
---- ANIMATIONS ----
--------------------

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })

---------------
---- INPUT ----
---------------

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

---------------------
---- KEYBINDINGS ----
---------------------

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("firefox"))

hl.bind(mainMod .. " + C", hl.dsp.window.close())

hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

--hl.bind(mainMod .. " + L",
--    hl.dsp.exec_cmd("loginctl lock-session"))

hl.bind(mainMod .. " + Z", hl.dsp.window.fullscreen({ mode = 0 }))

hl.bind(mainMod .. " + X", hl.dsp.window.fullscreen({ mode = 1 }))

hl.bind("Print", hl.dsp.exec_cmd("grimblast -f -n copysave area"))

hl.bind("SHIFT + Print", hl.dsp.exec_cmd("grimblast -f -n edit area"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))

hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))

for i = 1, 10 do
	local key = i % 10

	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))

	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

hl.bind(mainMod .. " + S", hl.dsp.workspace.toggle_special("magic"))

hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-------------------------
---- MEDIA HOTKEYS ----
-------------------------

hl.bind("XF86Calculator", hl.dsp.exec_cmd("kcalc"))

hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })

hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })

hl.bind("xf86KbdBrightnessUp", hl.dsp.exec_cmd("brightnessctl -d '*::kbd_backlight' set +50%"))

hl.bind("xf86KbdBrightnessDown", hl.dsp.exec_cmd("brightnessctl -d '*::kbd_backlight' set 50%-"))

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

hl.window_rule({
	name = "fix-xwayland-drags",

	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "move-hyprland-run",
	match = { class = "hyprland-run" },

	move = "20 monitor_h-120",
	float = true,
})

hl.window_rule({
	name = "waylyrics",

	match = {
		class = "io.github.waylyrics.Waylyrics",
		title = "Waylyrics",
	},

	move = "0 monitor_h*0.7",
	float = true,
	no_focus = true,
	pin = true,
	no_blur = true,
	no_shadow = true,
	border_size = 0,
})

hl.window_rule({
	name = "kcalc",
	match = {
		class = "org.kde.kcalc",
	},

	float = true,
})

hl.window_rule({
	name = "fix-wechat",

	match = {
		class = "wechat",
		title = "negative:^(朋友圈|微信|设置|聊天文件|预览|图片和视频)\\W*",
	},

	no_blur = true,
	no_shadow = true,
	border_size = 0,
	no_screen_share = true,
})

hl.window_rule({
	name = "fix-wechat-send",

	match = {
		class = "wechat",
		title = "^微信发送给$",
	},

	no_blur = true,
	no_shadow = true,
	border_size = 0,
	no_screen_share = true,
})

hl.window_rule({
	name = "no_opacity",

	match = {
		class = "firefox",
	},

	opacity = "1 override 1",
})

-- hl.window_rule({
-- 	name = "no_screen_share",
--
-- 	match = {
-- 		class = "^(org.telegram.desktop|QQ)$",
-- 	},
-- 	no_screen_share = true,
-- })

-------------------
---- LAYERRULE ----
-------------------
