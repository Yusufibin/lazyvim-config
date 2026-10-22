return {
  {
    "dmtrKovalenko/fff.nvim",
    build = function()
      require("fff.download").download_or_build_binary()
    end,
    lazy = false,
    opts = {
      debug = {
        enabled = false,
        show_scores = false,
      },
    },
    keys = {
      { "ff", function() require("fff").find_files() end, desc = "FFFind files" },
      { "fg", function() require("fff").live_grep() end, desc = "LiFFFe grep" },
      { "fz", function() require("fff").live_grep({ grep = { modes = { "fuzzy", "plain" } } }) end, desc = "Live fffuzzy grep" },
      { "fw", function() require("fff").live_grep_under_cursor() end, mode = { "n", "x" }, desc = "Search current word" },
    },
  },
}
