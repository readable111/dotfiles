return {
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function ()
      require("everforest").setup({
        background = "hard",
        transparent_background_level = 0,
        italics = true,
        dim_inactive_windows = false,
        diagnostic_text_highlight = true,
      })
    end
  },
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },
}
