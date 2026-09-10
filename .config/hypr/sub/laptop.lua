------------------
---- MONITORS ----
------------------

hl.monitor({
	output = "eDP-1",
	mode = "maxwidth",
	position = "auto",
	scale = 2,
	bitdepth = 10,
	vrr = 3,
})
hl.monitor({
	output = "HDMI-A-1",
	mode = "maxwidth",
	position = "auto-up",
	scale = 2,
	bitdepth = 10,
	vrr = 3,
})

local mainMod = "SUPER"

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("loginctl lock-session"))
