return {
  "sindrets/diffview.nvim",
  cmd = {"DiffviewOpen", "DiffviewClose"},
  config = function ()
    local map = vim.keymap.set 
    -- map("n", "<leader>dv", vim.cmd.DiffviewOpen, {desc = "Open Diff"})
  end
}
