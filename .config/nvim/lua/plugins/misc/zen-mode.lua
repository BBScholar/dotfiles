return {
  "folke/zen-mode.nvim",
  cmd = {"ZenMode"},
  keys = {
    { "<leader>zz", "<cmd>ZenMode<CR>", mode = "n", desc = "ZenMode"}
  },
  opts = {
    window = {
      width = 0.85
    }
  },
  config = function ()
    vim.keymap.set("n", "<leader>zz", "<cmd>ZenMode<CR>")
  end
}
