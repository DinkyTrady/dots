return {
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    opts = {
      mappings = {
        i = {
          k = {
            k = "<Esc>",
            j = "<Esc>"
          }
        },
        c = {
          k = {
            k = "<Esc>",
            j = "<Esc"
          }
        }
      },
    },
  },
  {
    "echasnovski/mini.indentscope",
    version = false,
    event = "LazyFile",
    opts = {
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    },
  },
  {
    "vyfor/cord.nvim",
    build = './build || .\\build',
    event = "VeryLazy",
    opts = {}
  }
}
