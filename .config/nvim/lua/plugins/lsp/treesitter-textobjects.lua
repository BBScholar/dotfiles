return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  dependecies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function ()
    require("nvim-treesitter.configs").setup {
      textobjects = {
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]m"] = "@function.outer",
          },
          goto_prev_start = {
            ["[m"] = "@function.outer",
          }
        },
        select = {
          enable = true,
          lookhead = true,

          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",

            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",

            ["as"] = "@scope"
          },

          selection_modes = {
            ["@param.outer"] = "v",
            ["@function.outer"] = "V",
            ["@class.outer"] = "<c-v>",
            ["@scope"] = "<c-v>"
          },

          include_surrounding_whitespace = true
        }
      }
    }
  end
}
