return {
  {
    "folke/ts-comments.nvim",
    opts = {
      langs = {
        dts = "// %s",
      },
    },
  },
  {
    "zbirenbaum/copilot.lua",
    optional = true,
    opts = {
      filetypes = { ["*"] = true },
    },
  },

  {
    "echasnovski/mini.align",
    opts = {},
    keys = {
      { "ga", mode = { "n", "v" } },
      { "gA", mode = { "n", "v" } },
    },
  },

  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  {
    "Wansmer/treesj",
    keys = {
      { "J", "<cmd>TSJToggle<cr>", desc = "Join Toggle" },
    },
    opts = { use_default_keymaps = false, max_join_length = 150 },
  },

  { "echasnovski/mini.test", cond = vim.fn.isdirectory("tests") == 1 },

  { "markdown-preview.nvim", enabled = false },

  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    opts = {
      theme = "light",
    },
    keys = {
      {
        "<leader>cp",
        function()
          require("peek").open()
        end,
      },
    },
  },
}
