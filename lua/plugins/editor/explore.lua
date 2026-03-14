-- Spec for explorer related modules
return {
	-- Uncomment the following two lines to use netrw instead of the snacks explorer
    ---- Make netrw pretty
	--{ "prichrd/netrw.nvim", opts = {} },

	-- Snacks explorer
    -- Replaces netrw
    {
        "folke/snacks.nvim",
        opts = {
            explorer = {
                enabled = true,
                replace_netrw = true,
            },
        },
    },
}
