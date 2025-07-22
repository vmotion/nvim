return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      keymaps = {
        insert = "<C-g>s",
        insert_line = "<C-g>S",
        normal = "gys",
        normal_cur = "gys",
        normal_line = "gyS",
        normal_cur_line = "gyS",
        visual = "S",
        visual_line = "gS",
        delete = "gds",
        change = "gcs",
      },
    })
  end,
}
