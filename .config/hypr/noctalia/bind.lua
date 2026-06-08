local ipc = "noctalia msg"
local mainMod = "SUPER"

hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia")
end)

hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))
hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(ipc .. " panel-toggle control-center"))

hl.bind(mainMod .. "+comma", hl.dsp.exec_cmd(ipc .. " settings-toggle"))

hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd(ipc .. " notification-clear-history"))

hl.bind("ALT + V", hl.dsp.exec_cmd(ipc .. " panel-toggle clipboard"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness-down"))

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd)$",
	},
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
