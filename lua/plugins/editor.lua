return {

    -- search and replace in multiple files
    {
        "MagicDuck/grug-far.nvim",
        opts = { headerMaxWidth = 80 },
        cmd = "GrugFar",
        keys = {
          {
            "<leader>sr",
            function()
              local grug = require("grug-far")
              local ext = vim.bo.buftype == "" and vim.fn.expand("%:e")
              grug.open({
                transient = true,
                prefills = {
                  filesFilter = ext and ext ~= "" and "*." .. ext or nil,
                },
              })
            end,
            mode = { "n", "v" },
            desc = "Search and Replace",
          },
        },
      },
    
      -- Flash enhances the built-in search functionality by showing labels
      -- at the end of each match, letting you quickly jump to a specific
      -- location.
      {
        "folke/flash.nvim",
        event = "VeryLazy",
        vscode = true,
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
          { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
          { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
          { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
          { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
          { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
        },
      },

      -- term buffers via NvChad's plugin
      {
        "NvChad/nvterm",
        config = function()
            require("nvterm").setup({
                winopts = { number = false, relativenumber = false },
                sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
                type_opts = {
                  vertical = { location = "rightbelow", split_ratio = .5, }
                }
              })
        end,
      },

      {
        "nvim-tree/nvim-tree.lua",
        config = function()
          require("nvim-tree").setup()
        end,
      }
}