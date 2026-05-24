------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "eDP-1",
	mode = "maxwidth",
	position = "auto",
	scale = 1.8,
	bitdepth = 10,
	vrr = 3,
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "maxwidth",
	position = "auto-up",
	scale = 1.25,
	bitdepth = 10,
	vrr = 3,
})

hl.on("hyprland.start", function()
	hl.exec_cmd("hypridle")
end)

local mainMod = "SUPER"

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"))
