if hl.plugin.hymission ~= nil then
	hl.bind("SUPER + TAB", function()
		hl.plugin.hymission.toggle("onlycurrentworkspace")
	end)
	hl.plugin.hymission.gesture({
		fingers = 3,
		direction = "vertical",
		action = "toggle",
		scope = "onlycurrentworkspace",
	})
end
