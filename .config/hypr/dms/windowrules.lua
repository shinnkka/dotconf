-- Window rules. Deploy writes ~/.config/hypr/dms/windowrules.lua
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
