return {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      file_types = { "markdown" },
      render_modes = { "n", "c", "t" },
      anti_conceal = {
        enabled = true,
        ignore = {
          code_background = true,
          sign = true,
        },
        above = 0,
        below = 0,
      },
      preset = "obsidian",
      injections = {
        gitcommit = {
          enabled = true,
          query = [[
                      ((message) @injection.content
                          (#set! injection.combined)
                          (#set! injection.include-children)
                          (#set! injection.language "markdown"))
                  ]],
        },
      },
      win_options = {
        conceallevel = {
          default = vim.api.nvim_get_option_value("conceallevel", {}),
          rendered = 3,
        },
        concealcursor = {
          default = vim.api.nvim_get_option_value("concealcursor", {}),
          rendered = "",
        },
      },
      bullet = { right_pad = 1 },
    },
  }
  