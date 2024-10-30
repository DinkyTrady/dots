return {
  {
    "nvim-java/nvim-java",
    ft = "java",
    config = false,
    dependencies = {
      {
        "neovim/nvim-lspconfig",
        init = function()
          local keys = require("lazyvim.plugins.lsp.keymaps").get()
          keys[#keys + 1] = { "<C-k>", false, mode = "i" }
        end,
        opts = {
          servers = {
            lua_ls = {
              mason = true,
            },
            html = {
              mason = true,
            },
            cssls = {
              mason = true,
            },
            emmet_ls = {
              mason = true,
            },
            clangd = {
              mason = false,
            },
          },
          setup = {
            jdtls = function()
              require("java").setup({
                spring_boot_tools = {
                  enable = false,
                },
                jdk = {
                  auto_install = false,
                },
              })
            end,
          },
        },
      },
    },
  },
  {
    "j-hui/fidget.nvim",
    tag = "v1.4.5",
    event = "LazyFile",
    opts = {
      notification = {
        window = {
          winblend = 0,
        },
      },
    },
  },
}
