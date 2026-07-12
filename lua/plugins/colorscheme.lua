return {
  -- Install the colorscheme plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Ensures the theme loads first
  },

  -- Tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
