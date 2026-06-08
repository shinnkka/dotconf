if hl.plugin.hymission ~= nil then
	hl.bind("SUPER + TAB", function()
		hl.plugin.hymission.toggle("onlycurrentworkspace")
	end)
	-- hl.bind("SUPER + SHIFT + TAB", function()
	-- 	hl.plugin.hymission.toggle("forceall")
	-- end)
end
