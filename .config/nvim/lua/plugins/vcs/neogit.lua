return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim"
  },
  cmd = { "Neogit" },
  config = function ()
    dofile(vim.g.base46_cache .. "neogit")
    require("neogit").setup {}
  end
}
