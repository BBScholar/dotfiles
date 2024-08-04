return {
  "tris203/precognition.nvim",
  event = "VeryLazy",
  opts = {
    startVisible = false
  },
  init = function ()
    vim.keymap.set("n", "<leader>pc", "<cmd>Precognition toggle<CR>", {desc = "Precognition Toggle"})
    vim.keymap.set("n", "<leader>pp", "<cmd>Precognition peek<CR>", {desc = "Precognition Peek"})
  end
}
