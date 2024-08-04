return {
  "github/copilot.vim",
  enable=false,
  -- lazy = false,
  -- event = "Copilot",
  cmd = {"Copilot"},
  config = function ()
    local map = vim.keymap.set
    -- map("n", "<leader>cc")
  end
}
