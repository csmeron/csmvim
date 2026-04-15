---@diagnostic disable: undefined-global
---
--- Some snacks modules are defined in separate places.
--- For example, the explorer config is in plugins.editor.explore
--- This is just for sorting/organizational purposes and may change down the road.
return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
        animate = { enabled = true },
        input = { enabled = true },
        git = { enabled = true },
        notifier = { enabled = true },
        scroll = { enabled = true },
        toggle = { map = vim.keymap.set },
    },
    import = "plugins.snacks",
}
