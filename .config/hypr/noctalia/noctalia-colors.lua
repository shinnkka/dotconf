local colors = {
    primary        = "rgb(7aa2f7)",
    surface        = "rgb(1a1b26)",
    secondary      = "rgb(bb9af7)",
    error          = "rgb(f7768e)",
    tertiary       = "rgb(9ece6a)",
    surface_lowest = "rgb(1c1d2a)",
}

hl.config({
    general = {
        col = {
            active_border   = colors.primary,
            inactive_border = colors.surface,
        },
    },

    group = {
        col = {
            border_active          = colors.secondary,
            border_inactive        = colors.surface,
            border_locked_active   = colors.error,
            border_locked_inactive = colors.surface,
        },

        groupbar = {
            col = {
                active          = colors.secondary,
                inactive        = colors.surface,
                locked_active   = colors.error,
                locked_inactive = colors.surface,
            },
        },
    },
})

return colors
