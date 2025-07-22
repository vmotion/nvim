return {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
  },
  -- { "TheLeoP/powershell.nvim" },
},
  require("render-markdown").setup({
    render_modes = { "n", "c", "t" },
  })
