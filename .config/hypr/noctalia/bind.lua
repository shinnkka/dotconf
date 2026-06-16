local ipc = "qs -c noctalia-shell ipc call"
local mainMod = "SUPER"
local run = "uwsm app -- "
hl.on("hyprland.start", function()
	hl.exec_cmd(run .. "qs -c noctalia-shell --no-duplicate")
end)

hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(run .. ipc .. " launcher toggle"))

hl.bind(mainMod .. " + I", hl.dsp.exec_cmd(run .. ipc .. " controlCenter toggle"))

hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd(run .. ipc .. " settings toggle"))

hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(run .. ipc .. " sessionMenu toggle"))

hl.bind(mainMod .. " + N", hl.dsp.exec_cmd(run .. ipc .. " notifications toggleHistory"))

hl.bind(mainMod .. " + SHIFT + N", hl.dsp.exec_cmd(run .. ipc .. " notifications clear"))

hl.bind("ALT + V", hl.dsp.exec_cmd(run .. ipc .. " launcher clipboard"))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(run .. ipc .. " volume increase"), { locked = true, repeating = true })

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(run .. ipc .. " volume decrease"), { locked = true, repeating = true })

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(run .. ipc .. " volume muteOutput"), { locked = true })

hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(run .. ipc .. " volume muteInput"), { locked = true })

hl.bind(
	"XF86MonBrightnessUp",
	hl.dsp.exec_cmd(run .. ipc .. " brightness increase"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86MonBrightnessDown",
	hl.dsp.exec_cmd(run .. ipc .. " brightness decrease"),
	{ locked = true, repeating = true }
)
hl.layer_rule({
	name = "noctalia",

	match = {
		namespace = "noctalia-background-.*$",
	},

	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})
