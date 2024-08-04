return {
  "RRethy/vim-illuminate",
  enable=false,
  lazy=false,
  config = function ()
    require("illuminate").configure {
      providers = {
        "lsp", "treesitter", "regex"
      },
      filetypes_denylist = {
        "dirbuf",
        "dirvish",
        "fugitive"
      },
      delay=100, -- ms
      under_cursor = true
    }
  end
}
