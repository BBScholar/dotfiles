return {
  "lewis6991/hover.nvim",
  enable = true,
  event = "BufWinEnter",
  config = function ()
    require("hover").setup {
      init = function ()
        require "hover.providers.lsp"
        -- require "hover.providers.diagnostics"
        require "hover.providers.dap"
        require "hover.providers.fold_preview"
      end,
      preview_opts = {
        border = "rounded"
      },
      preview_window = true,
      title = true,
      mouse_providers = {
        "LSP"
      },
      mouse_delay = 1000,
    }

    local map = vim.keymap.set
    map("n", "K", require("hover").hover, {desc = "hover.nvim"})
    map("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)"})
    map("n", "<MouseMove>", require("hover").hover_mouse, {desc = "hover.nvim (mouse)"})
    vim.o.mousemoveevent = true
  end
}
