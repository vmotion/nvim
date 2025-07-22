return {
  -- Theme: TokyoNight with transparency settings
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

  -- Theme: Kanagawa
  {
    "rebelot/kanagawa.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Theme: Aura (with custom config)
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
    end,
  },

  -- Theme: Gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- LazyVim core configuration
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-dragon",
    },
  },

  -- Markdown rendering
  {
    "MeanderingProgrammer/render-markdown.nvim",
    config = function()
      require("render-markdown").setup({
        render_modes = { "n", "c", "t" },
      })
    end,
  },

  -- Optional plugin: PowerShell support
  -- { "TheLeoP/powershell.nvim" },
}
