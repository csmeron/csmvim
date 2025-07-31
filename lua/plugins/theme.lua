 -- Spec for setting up colorscheme (Everforest)
 
 return {
     "neanias/everforest-nvim",
     version = false,
     lazy = false,
     priority = 1000,
     config = function()
         require("everforest").setup({
             background = "hard", -- "soft", "medium", "hard"
             transparent_background_level = 0.1, -- 0 to 1
             dim_inactive_windows = true,
             styles = {
                 comments = "italic",
                 keywords = "bold",
                 variables = "italic",
             },
         })
     end,
 }
