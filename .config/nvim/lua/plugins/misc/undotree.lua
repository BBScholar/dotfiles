return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  init = function ()
    local undo_dir = vim.fn.stdpath('data') .. "/.undo"
    if not vim.fn.isdirectory(undo_dir) then
      vim.fn.mkdir(undo_dir, "p", 700)
    end
    vim.opt.undodir = undo_dir

    vim.keymap.set("n", "<leader>ut", vim.cmd.UndotreeToggle, {desc = "UndoTree Toggler"})
  end
}
