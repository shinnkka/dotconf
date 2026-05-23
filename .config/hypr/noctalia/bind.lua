local ipc = "qs -c noctalia-shell ipc call"
local mainMod = "SUPER"

hl.on("hyprland.start", function()
	hl.exec_cmd("qs -c noctalia-shell --no-duplicate")
end)

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(ipc .. " launcher toggle"))

hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(ipc .. " controlCenter toggle"))

hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd(ipc .. " settings toggle"))

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(ipc .. " sessionMenu toggle"))

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(ipc .. " notifications toggleHistory"))

hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd(ipc .. " notifications clear"))

hl.bind("ALT + V", hl.dsp.exec_cmd(ipc .. " launcher clipboard"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume increase"), { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume decrease"), { locked = true, repeating = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume muteOutput"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(ipc .. " volume muteInput"), { locked = true })

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness increase"), { locked = true, repeating = true })

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness decrease"), { locked = true, repeating = true })
hl.layer_rule({
	name = "noctalia",

	match = {
		namespace = "noctalia-background-.*$",
	},

	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
