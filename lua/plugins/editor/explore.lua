-- Spec for editor modules like explorers and related extensions
return {
    -- Make netrw pretty
    { "prichrd/netrw.nvim", opts = {} },

    -- Snacks explorer
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
