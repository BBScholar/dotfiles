return {
  "olimorris/codecompanion.nvim",
  cmd = {
    "CodeCompanion",
    "CodeCompanionAdd",
    "CodeCompanionChat",
    "CodeCompanionToggle",
    "CodeCompanionOptions",
    "CodeCompanionWithBuffers"
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim", -- Optional
    -- {
    --   "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
    --   opts = {},
    -- },
  },
  init = function ()
    vim.keymap.set({"n", "v"}, "<leader>cc", vim.cmd.CodeCompanionToggle)
  end,
  config = function ()
    require("codecompanion").setup {
      opts = {
        send_code = true
      },
      adapters = {
        ollama = require("codecompanion.adapters").use("ollama", {
          schema = {
            model = {
              default = "llama3.1"
            }
          }
        })
      },
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama"
        }
      }
    }
  end
}

